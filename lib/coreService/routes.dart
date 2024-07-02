import 'package:flutter/material.dart';
import 'package:my_dream/Page/3_student_email_page/3.6_students_success_screen.dart';
import 'package:my_dream/Page/3_student_email_page/3_student_identity_detail.dart';
import 'package:my_dream/Page/2_login_page/2_login.dart';
import 'package:my_dream/Page/4_main_page/main_detail_page/2_detail_top_12.dart';
import 'package:my_dream/Page/4_main_page/4_main_screen.dart';
import 'package:my_dream/Page/1_start_page/1_start_Page.dart';
import 'package:my_dream/Page/4_main_page/main_detail_page/1_detail_new_store.dart';
import 'package:my_dream/Page/7_partnership_request_page/7.1_partnership_request_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/LoginPage': (context) => const LoginPage(), // 로그인 회원가입 페이지
  '/StudentIdentityCheck': (context) =>
      const StudentIdentityCheck(), // 학생 인증 페이지
  '/StudentsSuccessScreen': (context) =>
      const StudentsSuccessScreen(), // 학생인증 완료 페이지

  '/MainScreen': (context) => const MainScreen(), // 메인화면 페이지

  '/DetailTop12Store': (context) => const DetailTop12(), //메인화면 top12 스토어 전체 보기

  '/DetailNewStore': (context) => const DetailNewStore(), // 메인화면 신규스토어 전체보기

  '/StartPage': (context) => const StartPage(), // 로그인 전 페이지
  '/PartnershipRequestScreen': (context) =>
      const PartnershipRequestScreen(), // 파트너십 요청페이지
};
