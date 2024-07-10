import 'package:flutter/material.dart';
import 'package:my_dream/Page/2_login_page/login_dio/login_dio.dart';
import 'package:my_dream/coreService/start_service_maintenance_notice.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    super.initState();
    serverConnection();
  }

  void serverConnection() async {
    bool result = await connectionServer();

    if (!result) {
      handleLoginResult();
    }
  }

  void handleLoginResult() {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (BuildContext context) {
        return const StartMaintenanceNotice();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              Image.asset(
                'assets/images/ifSaiLogo.png',
                width: 207,
              ),
              SizedBox(height: screenHeight * 0.059),
              const Text(
                '다양한 쿠폰과 혜택을 한번에\n지금 잎사이에서 만나보세요!',
                style: TextStyle(
                  color: Color(0xff111111),
                  fontSize: 22,
                  fontFamily: 'Pretendard',
                ),
              ),
              SizedBox(height: screenHeight * 0.24),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/LoginPage');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff6fbf8a),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    '잎사이 시작하기',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.005),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 25),
                  const Text(
                    '회원가입 없이',
                    style: TextStyle(
                      color: Color(0xff6c6c6c),
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                    ),
                  ),
                  const SizedBox(width: 5),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/MainScreen');
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.black)),
                              ),
                              child: const Text(
                                '메인화면 둘러보기',
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
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
