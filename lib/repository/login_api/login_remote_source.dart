import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:my_dream/repository/login_api/login_remote_request.dart';
import 'package:my_dream/repository/login_api/login_remote_response.dart';
import 'package:my_dream/Page/2_login_page/login_dio/login_dio.dart';
import 'package:my_dream/model/login.dart';

@singleton
class LoginRemoteSource {
  const LoginRemoteSource();

  /*----------------- SNS 로그인 관련 메서드 ----------------- */
  /*-------------------------------------------------- */

  // OAuth 로그인
  Future<LoginResult> snsLogin(SNSLoginRequest request) async {
    final response = await snsLoginRequest(request.type, request.accessToken);
    return response.toModel();
  }

  // OAuth 새로운 계정 이전
  Future<bool> transferAccount(ChangeSNSLoginRequest request) async {
    return await changeSNSLogin(request.targetEmail);
  }

  // 로그아웃
  Future<void> logout() async {
    await ifsaiLogout();
  }

  /*----------------- 학생 인증 관련 메서드 ----------------- */
  /*-------------------------------------------------- */

  // 학생 권한 변경을 위한 메일 전송
  Future<EmailVerificationResult> sendStudentEmail(
      StudentEmailRequest request) async {
    final response = await sendStudentEmailRequest(request.schoolEmail);
    return response.toModel();
  }

  // 학생 인증 메일 코드 확인
  Future<EmailVerificationResult> verifyEmailCode(
      EmailVerificationRequest request) async {
    final response = await emailCodeRequest(request.code, request.email);
    return response.toModel();
  }

  /*----------------- 사용자 정보 관련 메서드 ----------------- */
  /*-------------------------------------------------- */

  // 사용자 프로필 정보 가져오기
  Future<UserProfile> getUserProfile() async {
    final response = await getUserProfileRequest();
    return response.toModel();
  }

  /*-------------------------------------------------- */
  /*-------------------------------------------------- */
}
