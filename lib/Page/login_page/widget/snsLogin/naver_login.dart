import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_dream/Page/2_login_page/page/login_cubit.dart';

class NaverLogin extends StatelessWidget {
  final Function(bool) onLoginResult;
  final Function(bool) isLoading;

  const NaverLogin({
    super.key,
    required this.onLoginResult,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: () => context.read<LoginCubit>().performNaverLogin(
            context,
            onLoginResult,
            isLoading,
          ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: double.infinity,
          height: 45,
          color: const Color(0xFF03C75A),
          child: const Center(
            child: Text(
              '네이버 계정으로 로그인',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: 'Pretendard',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
