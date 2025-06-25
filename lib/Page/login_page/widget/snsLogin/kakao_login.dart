import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_dream/Page/2_login_page/page/login_cubit.dart';

class KakaoLogin extends StatelessWidget {
  final Function(bool) onLoginResult;
  final Function(bool) isLoading;

  const KakaoLogin({
    super.key,
    required this.onLoginResult,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: () => context.read<LoginCubit>().performKakaoLogin(
            context,
            onLoginResult,
            isLoading,
          ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset('assets/kakao_login_medium_narrow.png'),
      ),
    );
  }
}
