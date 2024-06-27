import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const storage = FlutterSecureStorage();
var cookieJar = CookieJar();

// SNS로그인 함수
Future<Map<String, dynamic>> snsLogin(String type, String accessToken) async {
  Dio dio = Dio();
  var url = '${dotenv.env['API_URL']}/v1/account/oauth/sign-in';

  Map<String, dynamic> data = {'type': type, 'accessToken': accessToken};

  try {
    var response = await dio.post(url, data: data);
    if (response.statusCode == 200) {
      await storage.write(
          key: 'accessToken', value: response.data['accessToken']);
      return {'status': 'success'};
    } else {
      return {'status': 'false'};
    }
  } catch (e) {
    return {'status': 'false'};
  }
}

// sns 계정 이전
Future<bool> changeSNSLogin(String targetEmail) async {
  Dio dio = Dio();
  var cookieJar = CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));

  var url = '${dotenv.env['API_URL']}/v1/account/oauth/transfer';

  Map<String, dynamic> data = {
    "targetEmail": targetEmail,
  };

  // 쿠키 설정
  String? token = await storage.read(key: 'accessToken');
  if (token != null) {
    List<Cookie> cookies = [Cookie('accessToken', token)];
    cookieJar.saveFromResponse(Uri.parse(url), cookies);
  }

  try {
    var reponse = await dio.patch(url, data: data);
    if (reponse.statusCode == 200) {
      print('이전 성공');
      return true;
    } else {
      return false;
    }
  } catch (e) {
    if (e is DioError) {
      var errorCode = {e.response?.data}.toString();
      print(errorCode);
    }
    return false;
  }
}

// 로그아웃 함수
Future<void> ifsaiLogout() async {
  await storage.delete(key: 'accessToken');
}

// 인증 이메일 보내기
Future<Map<String, dynamic>> sendStudentEmail(String email) async {
  Dio dio = Dio();
  var cookieJar = CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));

  var url = '${dotenv.env['API_URL']}/v1/accounts/certs/students/send-mail';

  Map<String, dynamic> data = {
    "schoolEmail": email,
  };

  // 쿠키 설정
  String? token = await storage.read(key: 'accessToken');
  if (token != null) {
    List<Cookie> cookies = [Cookie('accessToken', token)];
    cookieJar.saveFromResponse(Uri.parse(url), cookies);
  }

  try {
    var response = await dio.post(
      url,
      data: data,
      options: Options(
        headers: {"Content-Type": "application/json"},
      ),
    );
    if (response.statusCode == 200) {
      return {'status': 'true'};
    } else {
      return {'status': 'false'};
    }
  } catch (e) {
    print(e);
    if (e is DioError) {
      var errorCode = {e.response?.data}.toString();
      print(errorCode);
      if (errorCode.contains('네이버')) {
        return {'status': '네이버'};
      } else if (errorCode.contains('kakao')) {
        return {'status': 'kakao'};
      } else if (errorCode.contains('구글')) {
        return {'status': '구글'};
      } else if (errorCode.contains('애플')) {
        return {'status': '애플'};
      }
    }
    return {'status': 'severError'};
  }
}

// 이메일 인증 코드 확인 요청
Future<Map<dynamic, String>> emailCode(
    String authenticationCode, String userEmail) async {
  Dio dio = Dio();
  var cookieJar = CookieJar();

  dio.interceptors.add(CookieManager(cookieJar));

  var url = '${dotenv.env['API_URL']}/v1/accounts/certs/students/code-check';

  Map<String, dynamic> data = {
    "email": userEmail,
    "code": authenticationCode,
  };

  // 쿠키 설정
  String? token = await storage.read(key: 'accessToken');
  if (token != null) {
    List<Cookie> cookies = [Cookie('accessToken', token)];
    cookieJar.saveFromResponse(Uri.parse(url), cookies);
  }

  try {
    var response = await dio.patch(url, data: data);

    if (response.statusCode == 200) {
      return {'status': 'success'};
    } else {
      return {'status': 'false'};
    }
  } catch (e) {
    if (e is DioError) {
      var errorCode = {e.response?.data}.toString();
      print(errorCode);
      if (errorCode.contains('errorCode: -5')) {
        return {'status': 'errorCode: -5'};
      } else if (errorCode.contains('errorCode: -21')) {
        String targetEmail =
            errorCode.split('data:').last.split('}}').first.trim();
        return {'status': 'errorCode: -21', 'targetEmail': targetEmail};
      }
      return {'status': 'unexpectedError', 'message': e.toString()};
    }
    return {'status': 'unexpectedError', 'message': e.toString()};
  }
}

// 인증 이메일 보내기 sns 변경
Future<Map<String, dynamic>> sendStudentEmailToSnsChange(String email) async {
  Dio dio = Dio();
  var cookieJar = CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));

  var url = '${dotenv.env['API_URL']}/v1/accounts/re-certs/students/send-mail';

  Map<String, dynamic> data = {
    "schoolEmail": email,
  };

  // 쿠키 설정
  String? token = await storage.read(key: 'accessToken');
  if (token != null) {
    List<Cookie> cookies = [Cookie('accessToken', token)];
    cookieJar.saveFromResponse(Uri.parse(url), cookies);
  }

  try {
    var response = await dio.post(
      url,
      data: data,
      options: Options(
        headers: {"Content-Type": "application/json"},
      ),
    );
    if (response.statusCode == 200) {
      return {'status': 'true'};
    } else {
      return {'status': 'false'};
    }
  } catch (e) {
    return {'status': 'severError'};
  }
}

// 이메일 인증 코드 확인 요청
Future<bool> emailCodeToSncChange(
    String authenticationCode, String userEmail) async {
  Dio dio = Dio();
  var cookieJar = CookieJar();

  dio.interceptors.add(CookieManager(cookieJar));

  var url = '${dotenv.env['API_URL']}/v1/account/re-cert/students/code-check';

  Map<String, dynamic> data = {
    "schoolEmail": userEmail,
    "code": authenticationCode,
  };

  // 쿠키 설정
  String? token = await storage.read(key: 'accessToken');
  if (token != null) {
    List<Cookie> cookies = [Cookie('accessToken', token)];
    cookieJar.saveFromResponse(Uri.parse(url), cookies);
  }

  try {
    var response = await dio.patch(url, data: data);

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  } catch (e) {
    return false;
  }
}

//유저 권한 확인
Future<Map<String, dynamic>> patchRoleSendSever() async {
  Dio dio = Dio();
  var cookieJar = CookieJar();

  // Dio에 쿠키 매니저 추가
  dio.interceptors.add(CookieManager(cookieJar));

  var url = '${dotenv.env['API_URL']}/v1/accounts/profiles';

  // 쿠키 설정
  String? token = await storage.read(key: 'accessToken');
  if (token != null) {
    // URL을 기반으로 쿠키 설정
    List<Cookie> cookies = [Cookie('accessToken', token)];
    cookieJar.saveFromResponse(Uri.parse(url), cookies);
  }

  try {
    var response = await dio.get(
      url,
      options: Options(
        headers: {"Content-Type": "application/json"},
      ),
    );

    if (response.statusCode == 200) {
      var responseData = response.data;
      print(responseData);

      bool isStudents =
          responseData['role'].toString().toUpperCase() == 'STUDENT';
      if (isStudents) {
        return {'status': 'students'};
      } else {
        return {'status': 'not students'};
      }
    } else {
      return {'status': 'is Sever Error'};
    }
  } catch (e) {
    print(e);
    return {'status': 'is Sever Error'};
  }
}

Future<bool> connectionServer() async {
  Dio dio = Dio();

  var uri = '${dotenv.env['API_URL']}/v1/security/is-connect';

  try {
    var respons = await dio.get(uri);

    if (respons.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  } catch (e) {
    return false;
  }
}
