import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:my_dream/Page/2_login_page/page/login_cubit.dart';
import 'package:my_dream/Page/2_login_page/page/login_state.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:provider/provider.dart';

class SNSLoginButton extends StatelessWidget {
  final SNSLoginType type;
  final LoginCubit cubit;

  const SNSLoginButton({
    super.key,
    required this.type,
    required this.cubit,
  });

  Future<void> _performLogin(BuildContext context) async {
    final joinStatus = Provider.of<JoinModel>(context, listen: false);
    joinStatus.setIsFirstClickSNSLogin(false);

    try {
      String? accessToken;

      switch (type) {
        case SNSLoginType.kakao:
          accessToken = await _performKakaoLogin();
          break;
        case SNSLoginType.naver:
          // 네이버 로그인 구현
          break;
        case SNSLoginType.google:
          accessToken = await _performGoogleLogin();
          break;
        case SNSLoginType.apple:
          // 애플 로그인 구현
          break;
      }

      if (accessToken != null && context.mounted) {
        // 모든 로직이 Cubit에서 처리됨 (네비게이션 포함)
        await cubit.performSNSLogin(context, type, accessToken);
      } else {
        joinStatus.setIsFirstClickSNSLogin(true);
      }
    } catch (e) {
      joinStatus.setIsFirstClickSNSLogin(true);
      print('Login error: $e');
    }
  }

  Future<String?> _performKakaoLogin() async {
    try {
      OAuthToken token;

      if (await isKakaoTalkInstalled()) {
        try {
          token = await UserApi.instance.loginWithKakaoTalk();
          return token.accessToken;
        } catch (error) {
          if (error is PlatformException && error.code == 'CANCELED') {
            return null;
          }
          // 카카오톡으로 로그인 실패시 카카오계정으로 로그인 시도
          token = await UserApi.instance.loginWithKakaoAccount();
          return token.accessToken;
        }
      } else {
        token = await UserApi.instance.loginWithKakaoAccount();
        return token.accessToken;
      }
    } catch (e) {
      print('Kakao login error: $e');
      return null;
    }
  }

  Future<String?> _performGoogleLogin() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? account = await googleSignIn.signIn();

      if (account != null) {
        final GoogleSignInAuthentication auth = await account.authentication;
        return auth.accessToken;
      }
      return null;
    } catch (e) {
      print('Google login error: $e');
      return null;
    }
  }

  String _getAssetPath() {
    switch (type) {
      case SNSLoginType.kakao:
        return 'assets/kakao_login_medium_narrow.png';
      case SNSLoginType.naver:
        return 'assets/ios_light_sq_SU@3x.png';
      case SNSLoginType.google:
        return 'assets/google_login.png';
      case SNSLoginType.apple:
        return 'assets/apple_login.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: () => _performLogin(context),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(_getAssetPath()),
      ),
    );
  }
}
