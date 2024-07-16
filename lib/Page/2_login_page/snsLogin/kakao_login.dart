import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:my_dream/Page/2_login_page/login_dio/login_dio.dart';
import 'package:provider/provider.dart';

class KakaoLogin extends StatefulWidget {
  final Function(bool) onLoginResult;
  final Function(bool) isLoading;

  const KakaoLogin({
    super.key,
    required this.onLoginResult,
    required this.isLoading,
  });

  @override
  State<KakaoLogin> createState() => _KakaoLoginState();
}

class _KakaoLoginState extends State<KakaoLogin> {
  Future<void> signInWithKakao() async {
    final loginModel = Provider.of<LoginModel>(context, listen: false);
    loginModel.setIsFirstClickSNSLogin(false);
    setState(() {
      widget.isLoading(true); // 로딩 인디케이터
    });

    OAuthToken token;

    // 카카오톡이 설치되어있으면 카카오톡으로 먼저 로그인을 시도
    // --------------------
    // 설치되어있지 않다면 다음 If문으로 넘어갑니다.
    if (await isKakaoTalkInstalled()) {
      try {
        token = await UserApi.instance.loginWithKakaoTalk();
        var result = await snsLogin('KAKAO', token.accessToken);
        if (result['status'] == 'success') {
          loginModel.setloginStatus(true);
          var roleResult = await patchRoleSendSever();
          loginModel.setOnProfileImageReceived(roleResult['image'].toString());

          if (roleResult['status'] == 'students') {
            // 학생인증을 예전에 완료했을 시,
            userIsStudents();
          } else if (roleResult['status'] == 'not students') {
            // 학생인증이 안되어있을 시,
            userIsNotStudents();
          }
        } else {
          widget.isLoading(false);
          loginModel.setIsFirstClickSNSLogin(true);
          widget.onLoginResult(false);
        }
      } catch (error) {
        if (error is PlatformException && error.code == 'CANCELED') {
          widget.isLoading(false);
          loginModel.setIsFirstClickSNSLogin(true);
          widget.onLoginResult(false);
          return;
        }
        try {
          token = await UserApi.instance.loginWithKakaoAccount();

          var result = await snsLogin('KAKAO', token.accessToken);
          await Future.delayed(const Duration(seconds: 2));

          if (result['status'] == 'success') {
            loginModel.setloginStatus(true);

            var roleResult = await patchRoleSendSever();
            loginModel
                .setOnProfileImageReceived(roleResult['image'].toString());

            if (roleResult['status'] == 'students') {
              // 학생인증을 예전에 완료했을 시,
              userIsStudents();
            } else if (roleResult['status'] == 'not students') {
              // 학생인증이 안되어있을 시,
              userIsNotStudents();
            }
          } else {
            widget.isLoading(false);
            loginModel.setIsFirstClickSNSLogin(true);
            widget.onLoginResult(false);
          }
        } catch (error) {
          widget.isLoading(false);
          loginModel.setIsFirstClickSNSLogin(true);
          widget.onLoginResult(false);
        }
      }
    } else {
      try {
        token = await UserApi.instance.loginWithKakaoAccount();

        var result = await snsLogin('KAKAO', token.accessToken);
        await Future.delayed(const Duration(seconds: 2));
        if (result['status'] == 'success') {
          loginModel.setloginStatus(true);
          var roleResult = await patchRoleSendSever();
          loginModel.setOnProfileImageReceived(roleResult['image'].toString());

          if (roleResult['status'] == 'students') {
            // 학생인증을 예전에 완료했을 시,

            userIsStudents();
          } else if (roleResult['status'] == 'not students') {
            // 학생인증이 안되어있을 시,
            userIsNotStudents();
          }
        } else {
          widget.isLoading(false);
          loginModel.setIsFirstClickSNSLogin(true);
          widget.onLoginResult(false);
        }
      } catch (error) {
        widget.isLoading(false);
        loginModel.setIsFirstClickSNSLogin(true);
        widget.onLoginResult(false);
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

  // 학생인증을 하지 않았을 때,
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
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: signInWithKakao,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          'assets/kakao_login_medium_narrow.png',
        ),
      ),
    );
  }
}
