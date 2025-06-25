import 'package:injectable/injectable.dart';
import 'package:my_dream/model/student_email.dart';
import 'package:my_dream/repository/student_email_api/student_email_remote_request.dart';
import 'package:my_dream/repository/student_email_api/student_email_remote_source.dart';

@singleton
class StudentEmailRemoteRepository {
  final StudentEmailRemoteSource _source;

  StudentEmailRemoteRepository(this._source);

  /*----------------- 학생 이메일 인증 관련 메서드 ----------------- */
  /*-------------------------------------------------- */

  // 학생 이메일 전송
  Future<StudentEmailVerification> sendStudentEmail(String email) async {
    final request = StudentEmailSendRequest(schoolEmail: email);
    return await _source.sendStudentEmail(request);
  }

  // 학생 코드 검증
  Future<StudentCodeVerification> verifyStudentCode(
      String code, String email) async {
    final request = StudentCodeVerifyRequest(email: email, code: code);
    return await _source.verifyStudentCode(request);
  }

  // 계정 이전
  Future<bool> transferAccount(String targetEmail) async {
    final request = StudentAccountTransferRequest(targetEmail: targetEmail);
    return await _source.transferAccount(request);
  }

  /*-------------------------------------------------- */
  /*-------------------------------------------------- */
}
