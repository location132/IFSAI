import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:my_dream/Page/2_login_page/login_dio/login_dio.dart';
import 'package:my_dream/coreService/dio_core.dart';

// 검색기록 불러오기
Future<List<Map<String, dynamic>>> recentSearch() async {
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
            'historyId': reponsedata['historyId'],
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
        //return userHistory(value, retry: retry + 1);
        return false;
      } else {
        return false;
      }
    }
  } else {
    return false;
  }
}

// 인기 검색어
Future<List<Map<String, dynamic>>> popularSearches() async {
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
    } else {
      return [];
    }
  } catch (e) {
    return [];
  }
}

// 인기 검색어 추가 [로그인]
Future<void> postPopularSearches(String value) async {
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
  } catch (e) {}
}

// 검색 기록 전체 삭제 [로그인]
Future<bool> deleteAllSearchHistory() async {
  Dio dio = Dio();
  var cookieJar = CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));

  var uri = '${dotenv.env['API_URL']}/v1/histories/all';

  String? token = await storage.read(key: 'accessToken');
  if (token != null) {
    List<Cookie> cookies = [Cookie('accessToken', token)];
    cookieJar.saveFromResponse(Uri.parse(uri), cookies);
  }

  try {
    var response = await dio.delete(uri);
    return response.statusCode == 200;
  } catch (e) {
    return false;
  }
}

// 검색 기록 하나 삭제 [로그인]
Future<bool> deleteSearchHistory(int historyId) async {
  Dio dio = Dio();
  var cookieJar = CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));

  var uri = '${dotenv.env['API_URL']}/v1/histories/$historyId';

  String? token = await storage.read(key: 'accessToken');
  if (token != null) {
    List<Cookie> cookies = [Cookie('accessToken', token)];
    cookieJar.saveFromResponse(Uri.parse(uri), cookies);
  }

  try {
    var response = await dio.delete(uri);
    return response.statusCode == 200;
  } catch (e) {
    return false;
  }
}

// 연관 검색어
Future<List<String>> sendRelatedSearch(String value) async {
  Dio dio = Dio();
  var uri = '${dotenv.env['API_URL']}/v1/auto-complete';

  Map<String, dynamic> data = {'word': value};

  try {
    var response = await dio.get(uri, queryParameters: data);
    if (response.statusCode == 200) {
      List<dynamic> result = response.data;
      return result.map((item) => item['word'] as String).toList();
    } else {
      return [];
    }
  } catch (e) {
    return [];
  }
}
