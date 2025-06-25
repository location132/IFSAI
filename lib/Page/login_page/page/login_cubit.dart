import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:my_dream/Page/2_login_page/page/login_state.dart';
import 'package:my_dream/Page/2_login_page/service/login_remote_service.dart';
import 'package:my_dream/coreService/core/dio/dio_interceptor_cache.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:provider/provider.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final LoginRemoteService _service;

  LoginCubit(this._service) : super(const LoginState());

  /*----------------- UI 상태 관리 메서드 ----------------- */
  /*-------------------------------------------------- */

  // UI 로딩 인디케이터 토글
  void toggleIndicator(bool isVisible) {
    if (isVisible) {
      emit(state.copyWith(
        isFilterVisible: true,
        isIndicatorVisible: true,
        isLoading: true,
        status: LoginStatus.loading,
      ));
    } else {
      emit(state.copyWith(
        isIndicatorVisible: false,
        isFilterVisible: false,
        isLoading: false,
      ));
    }
  }

  // 에러 메시지 클리어
  void clearError() {
    emit(state.copyWith(
      status: LoginStatus.initial,
      errorMessage: null,
      successMessage: null,
    ));
  }

  /*----------------- SNS 로그인 관련 메서드 ----------------- */
  /*-------------------------------------------------- */

  // Google 로그인 처리
  Future<void> performGoogleLogin(
    BuildContext context,
    Function(bool) onLoginResult,
    Function(bool) isLoading,
  ) async {
    final joinStatus = Provider.of<JoinModel>(context, listen: false);
    joinStatus.setIsFirstClickSNSLogin(false);
    isLoading(true);

    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        String accessToken = googleAuth.accessToken!;

        await performSNSLogin(context, SNSLoginType.google, accessToken);
      } else {
        isLoading(false);
        joinStatus.setIsFirstClickSNSLogin(true);
        onLoginResult(false);
      }
    } catch (e) {
      isLoading(false);
      joinStatus.setIsFirstClickSNSLogin(true);
      onLoginResult(false);
    }
  }

  // Kakao 로그인 처리
  Future<void> performKakaoLogin(
    BuildContext context,
    Function(bool) onLoginResult,
    Function(bool) isLoading,
  ) async {
    final joinStatus = Provider.of<JoinModel>(context, listen: false);
    joinStatus.setIsFirstClickSNSLogin(false);
    isLoading(true);

    try {
      OAuthToken token;

      if (await isKakaoTalkInstalled()) {
        try {
          token = await UserApi.instance.loginWithKakaoTalk();
          await performSNSLogin(context, SNSLoginType.kakao, token.accessToken);
        } catch (error) {
          if (error is PlatformException && error.code == 'CANCELED') {
            _handleLoginFailure(joinStatus, onLoginResult, isLoading);
            return;
          }
          try {
            token = await UserApi.instance.loginWithKakaoAccount();
            await performSNSLogin(
                context, SNSLoginType.kakao, token.accessToken);
          } catch (error) {
            _handleLoginFailure(joinStatus, onLoginResult, isLoading);
          }
        }
      } else {
        try {
          token = await UserApi.instance.loginWithKakaoAccount();
          await performSNSLogin(context, SNSLoginType.kakao, token.accessToken);
        } catch (error) {
          _handleLoginFailure(joinStatus, onLoginResult, isLoading);
        }
      }
    } catch (e) {
      _handleLoginFailure(joinStatus, onLoginResult, isLoading);
    }
  }

  // Naver 로그인 처리
  Future<void> performNaverLogin(
    BuildContext context,
    Function(bool) onLoginResult,
    Function(bool) isLoading,
  ) async {
    final joinStatus = Provider.of<JoinModel>(context, listen: false);
    joinStatus.setIsFirstClickSNSLogin(false);

    await FlutterNaverLogin.logOut();
    isLoading(true);

    try {
      await FlutterNaverLogin.logIn();
      final NaverAccessToken naverLogin =
          await FlutterNaverLogin.currentAccessToken;

      await clearAllMemoryCache();

      await performSNSLogin(
          context, SNSLoginType.naver, naverLogin.accessToken);
    } catch (error) {
      joinStatus.setIsFirstClickSNSLogin(true);
      onLoginResult(false);
    } finally {
      isLoading(false);
    }
  }

  // Apple 로그인 처리
  Future<void> performAppleLogin(
    BuildContext context,
    Function(bool) onLoginResult,
    Function(bool) isLoading,
  ) async {
    final joinStatus = Provider.of<JoinModel>(context, listen: false);
    joinStatus.setIsFirstClickSNSLogin(false);
    isLoading(true);

    try {
      // TODO: Apple 로그인 구현 필요
      await Future.delayed(const Duration(seconds: 3));
      isLoading(false);
      onLoginResult(false);
    } catch (error) {
      isLoading(false);
      joinStatus.setIsFirstClickSNSLogin(true);
      onLoginResult(false);
    }
  }

  // 로그인 실패 처리 헬퍼
  void _handleLoginFailure(
    JoinModel joinStatus,
    Function(bool) onLoginResult,
    Function(bool) isLoading,
  ) {
    isLoading(false);
    joinStatus.setIsFirstClickSNSLogin(true);
    onLoginResult(false);
  }

  // SNS 로그인 처리 (모든 로직이 Cubit에 있음)
  Future<void> performSNSLogin(
      BuildContext context, SNSLoginType type, String accessToken) async {
    try {
      toggleIndicator(true);

      final typeString = _getSNSTypeString(type);
      final userProfile =
          await _service.performSNSLogin(typeString, accessToken);

      if (userProfile != null) {
        emit(state.copyWith(
          status: LoginStatus.success,
          userProfile: userProfile,
          isLoading: false,
        ));

        // 네비게이션 처리도 Cubit에서 담당
        await _service.handleUserNavigation(context, userProfile);
      } else {
        emit(state.copyWith(
          status: LoginStatus.failure,
          errorMessage: '로그인에 실패했습니다.',
          isLoading: false,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        status: LoginStatus.failure,
        errorMessage: '로그인 중 오류가 발생했습니다: ${e.toString()}',
        isLoading: false,
      ));

      // 실패 시 Provider 상태 복원
      final joinStatus = Provider.of<JoinModel>(context, listen: false);
      joinStatus.setIsFirstClickSNSLogin(true);
    } finally {
      toggleIndicator(false);
    }
  }

  /*----------------- 학생 인증 관련 메서드 ----------------- */
  /*-------------------------------------------------- */

  // 학생 이메일 전송 (모든 로직이 Cubit에 있음)
  Future<void> sendStudentEmail(String email) async {
    try {
      emit(state.copyWith(status: LoginStatus.loading));

      final result = await _service.sendStudentEmail(email);

      if (result.isSuccess) {
        emit(state.copyWith(
          status: LoginStatus.emailSent,
          emailVerificationResult: result,
          successMessage: '인증 이메일이 전송되었습니다.',
        ));
      } else {
        String errorMessage = _getEmailErrorMessage(result.errorMessage);

        emit(state.copyWith(
          status: LoginStatus.failure,
          emailVerificationResult: result,
          errorMessage: errorMessage,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        status: LoginStatus.failure,
        errorMessage: '이메일 전송 중 오류가 발생했습니다: ${e.toString()}',
      ));
    }
  }

  Future<void> verifyEmailCode(String code, String email) async {
    try {
      emit(state.copyWith(status: LoginStatus.loading));

      final result = await _service.verifyEmailCode(code, email);

      if (result.isSuccess) {
        emit(state.copyWith(
          status: LoginStatus.emailVerified,
          emailVerificationResult: result,
          successMessage: '이메일 인증이 완료되었습니다.',
        ));
      } else {
        String errorMessage =
            _getCodeVerificationErrorMessage(result.errorMessage);

        emit(state.copyWith(
          status: LoginStatus.failure,
          emailVerificationResult: result,
          errorMessage: errorMessage,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        status: LoginStatus.failure,
        errorMessage: '코드 검증 중 오류가 발생했습니다: ${e.toString()}',
      ));
    }
  }

  Future<void> changeSNSLogin(String targetEmail) async {
    try {
      emit(state.copyWith(status: LoginStatus.loading));

      final result = await _service.changeSNSLogin(targetEmail);

      if (result) {
        emit(state.copyWith(
          status: LoginStatus.success,
          successMessage: '계정 이전이 완료되었습니다.',
        ));
      } else {
        emit(state.copyWith(
          status: LoginStatus.failure,
          errorMessage: '계정 이전에 실패했습니다.',
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        status: LoginStatus.failure,
        errorMessage: '계정 이전 중 오류가 발생했습니다: ${e.toString()}',
      ));
    }
  }

  /*----------------- 기타 메서드 ----------------- */
  /*-------------------------------------------------- */

  // 로그아웃 (모든 로직이 Cubit에 있음)
  Future<void> logout() async {
    try {
      await _service.logout();
      emit(const LoginState()); // 초기 상태로 리셋
    } catch (e) {
      emit(state.copyWith(
        status: LoginStatus.failure,
        errorMessage: '로그아웃 중 오류가 발생했습니다: ${e.toString()}',
      ));
    }
  }

  /*----------------- 프라이빗 헬퍼 메서드 ----------------- */
  /*-------------------------------------------------- */

  // SNS 타입을 문자열로 변환
  String _getSNSTypeString(SNSLoginType type) {
    switch (type) {
      case SNSLoginType.kakao:
        return 'KAKAO';
      case SNSLoginType.naver:
        return 'NAVER';
      case SNSLoginType.google:
        return 'GOOGLE';
      case SNSLoginType.apple:
        return 'APPLE';
    }
  }

  // 이메일 에러 메시지 생성
  String _getEmailErrorMessage(String? errorMessage) {
    if (errorMessage == null) return '이메일 전송에 실패했습니다.';

    if (errorMessage.contains('네이버') ||
        errorMessage.contains('kakao') ||
        errorMessage.contains('구글') ||
        errorMessage.contains('애플')) {
      return '이미 $errorMessage 계정으로 가입된 이메일입니다.';
    }
    return '이메일 전송에 실패했습니다.';
  }

  // 코드 검증 에러 메시지 생성
  String _getCodeVerificationErrorMessage(String? errorMessage) {
    if (errorMessage == null) return '코드 검증에 실패했습니다.';

    if (errorMessage.contains('errorCode: -5')) {
      return '잘못된 인증 코드입니다.';
    } else if (errorMessage.contains('errorCode: -21')) {
      return '이미 다른 계정으로 가입된 이메일입니다.';
    }
    return '코드 검증에 실패했습니다.';
  }

  /*-------------------------------------------------- */
  /*-------------------------------------------------- */
}
