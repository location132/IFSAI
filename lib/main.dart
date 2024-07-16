import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_user.dart';
import 'package:my_dream/Page/2_login_page/login_dio/login_dio.dart';
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
  if (jailbroken /*|| developerMode*/) {
    exit(0);
  }

  // API URL 환경 변수 가져오기
  String apiUrl = dotenv.env['API_URL']!;
  KakaoSdk.init(nativeAppKey: dotenv.env['KAKAO_APP_KEY']!);
  String urlImg = '';

  bool isTokenValid = false;
  const storage = FlutterSecureStorage();
  String? accessToken = await storage.read(key: 'accessToken');
  bool isLoggedIn = accessToken != null;
  if (isLoggedIn) {
    isTokenValid = await acconutsTK();
    if (isTokenValid) {
      var roleResult = await patchRoleSendSever(); // 프로필 조회
      urlImg = roleResult['image'].toString();
    }
  }

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginModel()),
        ChangeNotifierProvider(create: (_) => SearchBarModel()),
        ChangeNotifierProvider(create: (_) => SearchScreenModel()),
      ],
      child: MyApp(isLoggedIn: isTokenValid, apiUrl: apiUrl, urlImg: urlImg),
    ),
  );
}

class MyApp extends StatefulWidget {
  final bool isLoggedIn;
  final String urlImg;
  final String apiUrl;
  const MyApp(
      {super.key,
      required this.isLoggedIn,
      required this.apiUrl,
      required this.urlImg});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      loginState();
    });
  }

  void loginState() {
    final loginStatus = Provider.of<LoginModel>(context, listen: false);
    if (widget.isLoggedIn) {
      loginStatus.setloginStatus(true);
      loginStatus.setOnProfileImageReceived(widget.urlImg);
    } else {
      loginStatus.setloginStatus(false);
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

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
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler:
                  const TextScaler.linear(1.0), // 사용자가 정의한 글자 크기를 무시하고 기본값으로 설정
            ),
            child: child!,
          );
        },
      ),
    );
  }
}
