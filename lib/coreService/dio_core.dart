import 'package:my_dream/Page/2_login_page/login_dio/login_dio.dart';

// 토큰 재발급
Future<void> dioCore(var message) async {
  await storage.write(
    key: 'accessToken',
    value: message['data']['accessToken'],
  );
}
