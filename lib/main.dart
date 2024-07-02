import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_user.dart';
import 'package:provider/provider.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:my_dream/coreService/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // .env 파일 로드
  await dotenv.load(fileName: '.env');

  // 가로모드 방지
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // 루팅 및 탈옥 방지
  bool jailbroken = await FlutterJailbreakDetection.jailbroken;
  //bool developerMode = await FlutterJailbreakDetection.developerMode;
  if (jailbroken /*|| developerMode*/) {
    exit(0);
  }

  // API URL 환경 변수 가져오기
  String apiUrl = dotenv.env['API_URL']!;

  KakaoSdk.init(nativeAppKey: dotenv.env['KAKAO_APP_KEY']!);

  const storage = FlutterSecureStorage();
  String? accessToken = await storage.read(key: 'accessToken');
  bool isLoggedIn = accessToken != null;

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginModel()),
        ChangeNotifierProvider(create: (_) => SearchBarModel()),
      ],
      child: MyApp(isLoggedIn: isLoggedIn, apiUrl: apiUrl),
    ),
  );
}

class MyApp extends StatefulWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn, required String apiUrl});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // 사용자 탭 감지
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus(); // 키보드 닫기 이벤트
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: appRoutes,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFFDFDFD), // #FDFDFD 색상 적용
        ),
        initialRoute: widget.isLoggedIn ? '/MainScreen' : '/StartPage',
      ),
    );
  }
}
