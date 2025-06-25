import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_dream/Page/2_login_page/widget/2.1_login_error.dart';
import 'package:my_dream/Page/2_login_page/page/login_cubit.dart';
import 'package:my_dream/Page/2_login_page/page/login_state.dart';
import 'package:my_dream/Page/2_login_page/widget/sns_login_button.dart';
import 'package:my_dream/coreService/core/di/injector.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final LoginCubit _loginCubit;

  @override
  void initState() {
    super.initState();
    _loginCubit = di<LoginCubit>();
  }

  @override
  void dispose() {
    _loginCubit.close();
    super.dispose();
  }

  void _handleLoginFailure() {
    showDialog(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (BuildContext context) {
        return const LoginError();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return BlocProvider.value(
      value: _loginCubit,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: BlocListener<LoginCubit, LoginState>(
              listener: (context, state) {
                // 로그인 실패 시 에러 다이얼로그 표시
                if (state.status == LoginStatus.failure) {
                  _handleLoginFailure();
                }
              },
              child: Stack(
                children: [
                  Positioned(
                    top: 6,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        CupertinoIcons.back,
                        size: 32,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.076, right: screenWidth * 0.076),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/images/ifSaiLogo.png',
                          width: 150,
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          '잎사이에 오신것을 환영합니다!\n소셜계정을 통해 회원가입을 진행해주세요:)',
                          style: TextStyle(
                            color: Color(0xff111111),
                            fontSize: 16,
                            fontFamily: 'Pretendard',
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          '현재 테스터는 구글 로그인만 가능합니다.',
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox(height: screenHeight * 0.09),
                        Consumer<JoinModel>(
                          builder: (context, joinModel, child) {
                            return IgnorePointer(
                              ignoring: !joinModel.isFirstClickSNSLogin,
                              child: Column(
                                children: [
                                  SNSLoginButton(
                                    type: SNSLoginType.naver,
                                    cubit: _loginCubit,
                                  ),
                                  const SizedBox(height: 14),
                                  SNSLoginButton(
                                    type: SNSLoginType.kakao,
                                    cubit: _loginCubit,
                                  ),
                                  const SizedBox(height: 14),
                                  SNSLoginButton(
                                    type: SNSLoginType.google,
                                    cubit: _loginCubit,
                                  ),
                                  const SizedBox(height: 14),
                                  SNSLoginButton(
                                    type: SNSLoginType.apple,
                                    cubit: _loginCubit,
                                  ),
                                  const SizedBox(height: 3),
                                ],
                              ),
                            );
                          },
                        ),
                        TextButton(
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          onPressed: () {
                            Navigator.pushNamed(context, '/MainScreen');
                          },
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Container(
                                    padding: EdgeInsets.zero,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                        color: Color(0xff757575),
                                      )),
                                    ),
                                    child: const Text(
                                      '회원가입 없이 둘러보기',
                                      style: TextStyle(
                                        color: Color(0xff757575),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.12),
                      ],
                    ),
                  ),
                  BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) {
                      return Positioned(
                        child: AnimatedOpacity(
                          opacity: state.isIndicatorVisible ? 1.0 : 0.0,
                          duration: const Duration(seconds: 1),
                          child: BackdropFilter(
                            filter: state.isFilterVisible
                                ? ImageFilter.blur(sigmaX: 2.3, sigmaY: 2.3)
                                : ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                            child: Center(
                              child: AnimatedOpacity(
                                opacity: state.isIndicatorVisible ? 1.0 : 0.0,
                                duration: const Duration(seconds: 1),
                                child: state.isLoading
                                    ? SizedBox(
                                        width: screenHeight * 0.118,
                                        height: screenHeight * 0.118,
                                        child: const CircularProgressIndicator(
                                          strokeCap: StrokeCap.round,
                                          strokeWidth: 12,
                                          backgroundColor: Color(0xffeeeeee),
                                          color: Color(0xff6fbf8a),
                                        ),
                                      )
                                    : const SizedBox(),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
