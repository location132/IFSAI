import 'package:injectable/injectable.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:my_dream/model/login.dart';
import 'package:my_dream/repository/login_api/login_remote_repository.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

@injectable
class LoginRemoteService {
  final LoginRemoteRepository _repository;

  LoginRemoteService(this._repository);

  /*----------------- SNS 로그인 관련 서비스 ----------------- */
  /*-------------------------------------------------- */

  // SNS 로그인 처리 및 사용자 프로필 조회
  Future<UserProfile?> performSNSLogin(String type, String accessToken) async {
    final loginResult = await _repository.snsLogin(type, accessToken);

    if (loginResult.isSuccess) {
      // 로그인 성공 시 사용자 프로필 정보 가져오기
      final userProfile = await _repository.getUserProfile();
      return userProfile;
    } else {
      throw Exception(loginResult.errorMessage ?? '로그인에 실패했습니다.');
    }
  }

  // 사용자 상태에 따른 네비게이션 처리
  Future<void> handleUserNavigation(
      BuildContext context, UserProfile userProfile) async {
    final joinStatus = Provider.of<JoinModel>(context, listen: false);
    final pageRoutesStatus = Provider.of<PageRoutes>(context, listen: false);
    final loginStatus = Provider.of<LoginModel>(context, listen: false);

    // Provider에 사용자 정보 저장
    loginStatus.setloginStatus(true);
    loginStatus.setStudentEmail(userProfile.userEmail);
    loginStatus.setOnProfileImageReceived(userProfile.image ?? '');
    loginStatus.setBasketCount(userProfile.basketCount);
    loginStatus.setIsStudent(userProfile.school);

    await Future.delayed(const Duration(seconds: 1));

    if (context.mounted) {
      if (userProfile.school) {
        // 학생인증이 완료된 경우
        _navigateToMainOrPreviousPage(context, joinStatus, pageRoutesStatus);
      } else {
        // 학생인증이 필요한 경우
        Navigator.pushReplacementNamed(context, '/StudentIdentityCheck');
        joinStatus.setIsFirstClickSNSLogin(false);
      }
    }
  }

  void _navigateToMainOrPreviousPage(
    BuildContext context,
    JoinModel joinStatus,
    PageRoutes pageRoutesStatus,
  ) {
    if (pageRoutesStatus.pageController.isEmpty ||
        pageRoutesStatus.pageController == '') {
      Navigator.pushNamedAndRemoveUntil(
        context,
        '/MainScreen',
        (route) => false,
      );
      joinStatus.setIsFirstClickSNSLogin(false);
    } else {
      if (pageRoutesStatus.pageController == '/StoreDetail') {
        pageRoutesStatus.setRetryStoreDetail(true);
        Navigator.popUntil(context, ModalRoute.withName('/StoreDetail'));
      } else {
        Navigator.pushReplacementNamed(
            context, pageRoutesStatus.pageController);
        joinStatus.setIsFirstClickSNSLogin(false);
      }
    }
    pageRoutesStatus.setclearPageController();
  }

  /*----------------- 학생 인증 관련 서비스 ----------------- */
  /*-------------------------------------------------- */

  // 학생 이메일 전송 처리
  Future<EmailVerificationResult> sendStudentEmail(String email) async {
    return await _repository.sendStudentEmail(email);
  }

  // 이메일 코드 검증 처리
  Future<EmailVerificationResult> verifyEmailCode(
      String code, String email) async {
    return await _repository.verifyEmailCode(code, email);
  }

  // SNS 계정 이전 처리
  Future<bool> changeSNSLogin(String targetEmail) async {
    return await _repository.changeSNSLogin(targetEmail);
  }

  /*----------------- 기타 서비스 ----------------- */
  /*-------------------------------------------------- */

  // 로그아웃 처리
  Future<void> logout() async {
    await _repository.logout();
  }

  /*-------------------------------------------------- */
  /*-------------------------------------------------- */
}
