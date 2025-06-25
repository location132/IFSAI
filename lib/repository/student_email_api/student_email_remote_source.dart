import 'package:injectable/injectable.dart';
import 'package:my_dream/Page/3_student_email_page/student_email_dio/student_email_dio.dart'
    as dio;
import 'package:my_dream/repository/student_email_api/student_email_remote_request.dart';
import 'package:my_dream/model/student_email.dart';

@singleton
class StudentEmailRemoteSource {
  const StudentEmailRemoteSource();

  /*----------------- 학생 이메일 인증 관련 메서드 ----------------- */
  /*-------------------------------------------------- */

  // 학생 이메일 전송
  Future<StudentEmailVerification> sendStudentEmail(
      StudentEmailSendRequest request) async {
    final response = await dio.sendStudentEmailRequest(request.schoolEmail);
    return response.toModel();
  }

  // 학생 코드 검증
  Future<StudentCodeVerification> verifyStudentCode(
      StudentCodeVerifyRequest request) async {
    final response = await dio.emailCodeRequest(request.code, request.email);
    return response.toModel();
  }

  // 계정 이전 (기존 로그인 API에서 가져옴)
  Future<bool> transferAccount(StudentAccountTransferRequest request) async {
    return await dio.changeSNSLogin(request.targetEmail);
  }

  /*-------------------------------------------------- */
  /*-------------------------------------------------- */
}
