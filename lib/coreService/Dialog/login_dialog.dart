import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginDialog extends StatefulWidget {
  const LoginDialog({super.key});

  @override
  State<LoginDialog> createState() => _LoginDialogState();
}

class _LoginDialogState extends State<LoginDialog> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      final emailStatus = Provider.of<LoginModel>(context, listen: false);
      Navigator.pop(context);
      emailStatus.setIstryEmailCode(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2.3, sigmaY: 2.3),
      child: Dialog(
        backgroundColor: Colors.white,
        insetPadding: const EdgeInsets.only(left: 30, right: 30),
        child: Wrap(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: Color(0xffc1c1c1),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 40),
                      const Text(
                        '로그인이 필요한 기능입니다.\n로그인 후 이용해주세요:) ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff5b5b5b),
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 22, right: 22),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/LoginPage');
                          },
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color(0xff6fbf8a),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Center(
                              child: Text(
                                '로그인하러 가기',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
