import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:my_dream/Page/2_login_page/login_dio/login_dio.dart';
import 'package:my_dream/coreService/dio_core.dart';

// 검색기록 불러오기
Future<List<Map<String, dynamic>>> recentSearch() async {
  print('몇번 실행? 검색기록 불러오기(테스트)');
  Dio dio = Dio();
  var cookieJar = CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));
  List<Map<String, dynamic>> userRecentSearch = [];

  var uri = '${dotenv.env['API_URL']}/v1/histories';

  String? token = await storage.read(key: 'accessToken');
  if (token != null) {
    List<Cookie> cookies = [Cookie('accessToken', token)];
    cookieJar.saveFromResponse(Uri.parse(uri), cookies);
  }

  try {
    var respons = await dio.get(uri);
    if (respons.statusCode == 200) {
      if (respons.data.toString().contains('errorCode: -35')) {
        await dioCore(respons.data);
        return await recentSearch();
      } else {
        print(respons.data);
        List<dynamic> responsdata = respons.data;
        for (var reponsedata in responsdata) {
          Map<String, dynamic> data = {
            'content': reponsedata['content'],
          };
          userRecentSearch.add(data);
        }
        return userRecentSearch;
      }
    } else {
      return userRecentSearch;
    }
  } catch (e) {
    return [];
  }
}

// 검색기록 추가
Future<bool> userHistory(String value, {int retry = 0}) async {
  print('검색기록 추가');
  Dio dio = Dio();
  var cookieJar = CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));

  var uri = '${dotenv.env['API_URL']}/v1/histories';

  Map<String, String> data = {"content": value};

  String? token = await storage.read(key: 'accessToken');
  if (token != null) {
    List<Cookie> cookies = [Cookie('accessToken', token)];
    cookieJar.saveFromResponse(Uri.parse(uri), cookies);
  }

  if (retry <= 1) {
    try {
      var response = await dio.post(uri, data: data);
      if (response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      if (e is DioException) {
        var errorCode = {e.response?.data}.toString();
        print(errorCode);
        //return userHistory(value, retry: retry + 1);
        return false;
      } else {
        return false;
      }
    }
  } else {
    print('데이터 전송 실패');
    return false;
  }
}

// 인기 검색어
Future<List<Map<String, dynamic>>> popularSearches({int retry = 0}) async {
  print('몇번 실행?3');
  Dio dio = Dio();
  var uri = '${dotenv.env['API_URL']}/v1/popular-search-word';
  List<Map<String, dynamic>> popularSearchesValue = [];

  Map<String, dynamic> sendData = {'size': '10'};

  try {
    var response = await dio.get(uri, queryParameters: sendData);

    if (response.statusCode == 200) {
      if (response.data.toString().contains('errorCode: -35')) {
        await dioCore(response.data);
        return await popularSearches();
      } else {
        if (response.data is List && response.data.length <= 10 && retry < 1) {
          await testDio();
          return await popularSearches(retry: retry + 1);
        } else {
          List<dynamic> data = response.data;
          for (var item in data) {
            Map<String, dynamic> value = {
              'value0': item['searchWord'],
              'value1': item['rankChangeValue'],
            };

            popularSearchesValue.add(value);
          }
          return popularSearchesValue;
        }
      }
    } else {
      return [];
    }
  } catch (e) {
    return [];
  }
}

// 인기검색어 0개일 경우 강제 푸쉬
Future<void> testDio() async {
  Dio dio = Dio();
  var uri = '${dotenv.env['API_URL']}/v1/popular-search-word/push';
  var test1 = await dio.post(uri);
  if (test1.statusCode == 200) {
    print('강제푸쉬 완료');
  }
}

// 인기 검색어 추가 [로그인]
Future<void> postPopularSearches(String value) async {
  print('인기 검색어 추가');
  Dio dio = Dio();
  var cookieJar = CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));

  var uri = '${dotenv.env['API_URL']}/v1/popular-search-word';

  Map<String, dynamic> sendData = {'searchWord': value};
  String? token = await storage.read(key: 'accessToken');

  if (token != null) {
    List<Cookie> cookies = [Cookie('accessToken', token)];
    cookieJar.saveFromResponse(Uri.parse(uri), cookies);
  }

  try {
    var response = await dio.post(uri, data: sendData);

    if (response.statusCode == 200) {
      if (response.data.toString().contains('errorCode: -35')) {
        dioCore(response.data);
        return await postPopularSearches(value);
      }
    } else {}
  } catch (e) {
    print(e);
  }
}

// 검색