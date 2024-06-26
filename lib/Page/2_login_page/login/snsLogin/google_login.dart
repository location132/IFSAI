import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:my_dream/coreService/login_dio.dart';
import 'package:provider/provider.dart';

class GoogleLogin extends StatefulWidget {
  final Function(bool) onLoginResult;
  final Function(bool) isLoading;

  const GoogleLogin(
      {super.key, required this.onLoginResult, required this.isLoading});

  @override
  State<GoogleLogin> createState() => _GoogleLoginState();
}

class _GoogleLoginState extends State<GoogleLogin> {
  void signInWithGoogle() async {
    final loginModel = Provider.of<LoginModel>(context, listen: false);
    loginModel.setIsFirstClickSNSLogin(false);
    setState(() {
      widget.isLoading(true); // 로딩 인디케이터
    });

    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        String accessToken = googleAuth.accessToken!;
        var result = await snsLogin('GOOGLE', accessToken);
        await Future.delayed(const Duration(seconds: 2));
        if (result['status'] == 'success') {
          loginModel.setloginStatus(true);

          setState(() {
            widget.isLoading(false);
          });
          await Future.delayed(const Duration(seconds: 1));
          if (mounted) {
            Navigator.pushNamedAndRemoveUntil(context, '/StudentIdentityCheck',
                (Route<dynamic> route) => false);
          }
        } else {
          widget.isLoading(false);
          loginModel.setIsFirstClickSNSLogin(true);
          widget.onLoginResult(false);
        }
      } else {
        widget.isLoading(false);
        loginModel.setIsFirstClickSNSLogin(true);
        widget.onLoginResult(false);
      }
    } catch (e) {
      widget.isLoading(false);
      loginModel.setIsFirstClickSNSLogin(true);
      widget.onLoginResult(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: () => signInWithGoogle(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          'assets/ios_light_sq_SU@3x.png',
        ),
      ),
    );
  }
}
