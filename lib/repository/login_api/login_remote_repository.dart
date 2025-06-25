import 'package:injectable/injectable.dart';
import 'package:my_dream/model/login.dart';
import 'package:my_dream/repository/login_api/login_remote_request.dart';
import 'package:my_dream/repository/login_api/login_remote_source.dart';

@singleton
class LoginRemoteRepository {
  final LoginRemoteSource _source;

  LoginRemoteRepository(this._source);

  /*----------------- SNS 로그인 관련 메서드 ----------------- */
  /*-------------------------------------------------- */

  // OAuth 로그인 (카카오, 네이버, 구글, 애플)
  Future<LoginResult> snsLogin(String type, String accessToken) async {
    final request = SNSLoginRequest(type: type, accessToken: accessToken);
    return await _source.snsLogin(request);
  }

  // OAuth 새로운 계정 이전
  Future<bool> changeSNSLogin(String targetEmail) async {
    final request = ChangeSNSLoginRequest(targetEmail: targetEmail);
    return await _source.transferAccount(request);
  }

  // 로그아웃
  Future<void> logout() async {
    await _source.logout();
  }

  /*----------------- 학생 인증 관련 메서드 ----------------- */
  /*-------------------------------------------------- */

  // 학생 권한 변경을 위한 메일 전송
  Future<EmailVerificationResult> sendStudentEmail(String email) async {
    final request = StudentEmailRequest(schoolEmail: email);
    return await _source.sendStudentEmail(request);
  }

  // 학생 인증 메일 코드 확인
  Future<EmailVerificationResult> verifyEmailCode(
      String authenticationCode, String userEmail) async {
    final request =
        EmailVerificationRequest(email: userEmail, code: authenticationCode);
    return await _source.verifyEmailCode(request);
  }

  /*----------------- 사용자 정보 관련 메서드 ----------------- */
  /*-------------------------------------------------- */

  // 사용자 프로필 정보 가져오기
  Future<UserProfile?> getUserProfile() async {
    try {
      return await _source.getUserProfile();
    } catch (e) {
      print('Repository - Get User Profile Error: $e');
      return null;
    }
  }

  /*-------------------------------------------------- */
  /*-------------------------------------------------- */
}
