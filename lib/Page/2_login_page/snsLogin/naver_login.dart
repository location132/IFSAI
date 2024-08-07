import 'package:flutter/material.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:my_dream/Page/2_login_page/login_dio/login_dio.dart';
import 'package:provider/provider.dart';

class NaverLogin extends StatefulWidget {
  final Function(bool) onLoginResult;
  final Function(bool) isLoading;

  const NaverLogin(
      {super.key, required this.onLoginResult, required this.isLoading});

  @override
  State<NaverLogin> createState() => _NaverLoginState();
}

class _NaverLoginState extends State<NaverLogin> {
  String isUserMail = '';

  // 인디케이터 끄기
  void _offIndicator() async {
    setState(() {
      widget.isLoading(false);
    });
    await Future.delayed(const Duration(seconds: 1));
  }

  Future<void> signInWithNaver() async {
    final loginModel = Provider.of<LoginModel>(context, listen: false);
    loginModel.setIsFirstClickSNSLogin(false);
    await FlutterNaverLogin.logOut();
    setState(() {
      widget.isLoading(true); // 로딩 인디케이터 켜기
    });
    try {
      await FlutterNaverLogin.logIn();
      final NaverAccessToken naverLogin =
          await FlutterNaverLogin.currentAccessToken;
      var result = await snsLogin('NAVER', naverLogin.accessToken);
      if (result['status'] == 'success') {
        // 네이버 로그인 성공
        loginModel.setloginStatus(true);
        var roleResult = await patchRoleSendSever(); // 프로필 조회
        loginModel.setOnProfileImageReceived(roleResult['image'].toString());

        if (roleResult['status'] == 'students') {
          // 학생인증을 예전에 완료했을 시,

          _offIndicator();
          userIsStudents();
        } else if (roleResult['status'] == 'not students') {
          // 학생인증이 안되어있을 시,

          _offIndicator();
          userIsNotStudents();
        }
      } else {
        // 서버 에러
        await Future.delayed(const Duration(seconds: 1));
        widget.isLoading(false);
        loginModel.setIsFirstClickSNSLogin(true);
        widget.onLoginResult(false);
      }
    } catch (error) {
      loginModel.setIsFirstClickSNSLogin(true);
      widget.onLoginResult(false);
    } finally {
      if (mounted) {
        setState(() {
          widget.isLoading(false);
        });
      }
    }
  }

// 해당 사용자가 학생일 떄,
  void userIsStudents() async {
    final loginModel = Provider.of<LoginModel>(context, listen: false);
    setState(() {
      widget.isLoading(false);
    });
    await Future.delayed(const Duration(seconds: 1));

    if (mounted) {
      Navigator.pushNamed(context, '/MainScreen');
      loginModel.setIsFirstClickSNSLogin(false);
    }
  }

  // 해당 사용자가 학생일 떄,
  void userIsNotStudents() async {
    final loginModel = Provider.of<LoginModel>(context, listen: false);
    setState(() {
      widget.isLoading(false);
    });
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      Navigator.pushNamed(context, '/StudentIdentityCheck');
      loginModel.setIsFirstClickSNSLogin(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => signInWithNaver(),
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          'assets/naver_login.png',
        ),
      ),
    );
  }
}
