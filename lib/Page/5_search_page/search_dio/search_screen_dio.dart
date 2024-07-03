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
  print('몇번 실행?2');
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
      if (response.statusCode == 200) {
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
Future<List<Map<String, dynamic>>> popularSearches() async {
  print('몇번 실행?3');
  Dio dio = Dio();
  var uri = '${dotenv.env['API_URL']}/v1/popular-search-word';
  List<Map<String, dynamic>> popularSearchesValue = [];

  Map<String, dynamic> sendData = {'size': '10'};

  try {
    var response = await dio.get(uri, queryParameters: sendData);

    if (response.statusCode == 200) {
      List<String> data = response.data;
      for (var item in data) {
        Map<String, dynamic> value = {'value0': item};
        popularSearchesValue.add(value);
      }
      return popularSearchesValue;
    } else {
      return [];
    }
  } catch (e) {
    return [];
  }
}
