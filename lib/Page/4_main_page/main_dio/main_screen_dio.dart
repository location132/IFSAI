import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:my_dream/Page/2_login_page/login_dio/login_dio.dart';

//신규스토어
Future<List<Map<String, dynamic>>> mainScreenNewStore() async {
  List<Map<String, dynamic>> extractedData = [];

  Dio dio = Dio();

  var url = '${dotenv.env['API_URL']}/v1/markets';

  Map<String, dynamic> requestData = {
    'sort': 'RECENTLY_UPLOAD',
    "distance.locationX": 0,
    "distance.localtionY": 0,
    'page': 0,
    'size': 6,
  };

  try {
    var response = await dio.get(url, queryParameters: requestData);

    if (response.statusCode == 200) {
      List<dynamic> market = response.data;

      for (var market in market) {
        Map<String, dynamic> data = {
          'market0': market['marketImage'],
          'market1': market['marketName'],
          'market2': market['marketDescription'],
          'market3': market['eventMessage'],
        };
        extractedData.add(data);
      }
      return extractedData;
    } else {
      return [];
    }
  } catch (e) {
    print(e);
    return [];
  }
}

// 탑 12
Future<List<Map<String, dynamic>>> mainScreenTop12() async {
  Dio dio = Dio();

  var url = '${dotenv.env['API_URL']}/v1/markets/recommendation';

  List<Map<String, dynamic>> extractedData = [];

  Map<String, dynamic> data = {
    'marketCount': 12,
  };

  try {
    var response = await dio.get(url, queryParameters: data);

    if (response.statusCode == 200) {
      List<dynamic> market = response.data;
      for (var market in market) {
        Map<String, dynamic> data = {
          'market0': market['marketImage'],
          'market1': market['marketName'],
          'market2': market['marketDescription'],
          'market3': market['averageReviewScore'],
          'market4': market['reviewCount'],
        };
        extractedData.add(data);
      }

      return extractedData;
    } else {
      return [];
    }
  } catch (e) {
    print(e);
    return [];
  }
}

// 베스트 리뷰
Future<List<Map<String, dynamic>>> mainScreenBestReviews() async {
  Dio dio = Dio();
  var url = '${dotenv.env['API_URL']}/v1/markets/reviews/top';
  List<Map<String, dynamic>> extractedData = [];

  Map<String, dynamic> data = {
    'page': 0,
    'size': 3,
    'sort': ['writeDate,desc'] // 수정된 정렬 파라미터
  };

  try {
    var serverResult = await dio.get(url, queryParameters: data);

    if (serverResult.statusCode == 200) {
      List<dynamic> reviewsData = serverResult.data;
      for (var reviewsData in reviewsData) {
        // 변수 이름 변경
        Map<String, dynamic> reviewMap = {
          'market0': reviewsData['writeDate'], // 글 쓴 시간
          'market1': reviewsData['reviewContent'], // 리뷰 내용
          'market2': reviewsData['images'][0]['image'], // 리뷰 이미지
          'market3': reviewsData['reviewerEmail'], // 리뷰 작성자
          'market4': reviewsData['recommendCount'], // 리뷰 추천수
        };
        extractedData.add(reviewMap);
      }

      return extractedData;
    } else {
      return [];
    }
  } catch (e) {
    print('Error: $e');
    return [];
  }
}

//메인화면 관광 명소
Future<List<Map<String, dynamic>>> mainScreenTourism() async {
  Dio dio = Dio();
  var url = '${dotenv.env['API_URL']}/v1/attractions';
  List<Map<String, dynamic>> extractedData = [];

  Map<String, dynamic> data = {
    'page': 0,
    'size': 4,
    'sort': ['String']
  };

  try {
    var serverResult = await dio.get(url, queryParameters: data);

    if (serverResult.statusCode == 200) {
      List<dynamic> place = serverResult.data;

      for (var place in place) {
        Map<String, dynamic> data = {
          'market0': place['imageUrl'],
          'market1': place['tags'],
          'market2': place['introduce']
        };

        extractedData.add(data);
      }

      return extractedData;
    } else {
      return [];
    }
  } catch (e) {
    print(e);
    return [];
  }
}

// 신규 스토어 디테일
Future<List<Map<String, dynamic>>> mainScreenNewStoreDetail(String page) async {
  List<Map<String, dynamic>> extractedData = [];

  Dio dio = Dio();

  var url = '${dotenv.env['API_URL']}/v1/markets';

  Map<String, dynamic> requestData = {
    'sort': 'RECENTLY_UPLOAD',
    "distance.locationX": 0,
    "distance.localtionY": 0,
    'page': page,
    'size': 1000,
  };

  try {
    var response = await dio.get(url, queryParameters: requestData);

    if (response.statusCode == 200) {
      List<dynamic> market = response.data;

      for (var market in market) {
        Map<String, dynamic> data = {
          'market0': market['marketImage'], // 이미지
          'market1': market['marketName'], // 매장 이름
          'market2': market['marketDescription'], // 카테고리
          'market3': market['eventMessage'], // 이벤트 내용
          'market4': market['openTime'], // 오픈 시간
          'market5': market['closeTime'], // 마감 시간
          'market6': market['distance'], // 거리
        };
        extractedData.add(data);
      }
      return extractedData;
    } else {
      return [];
    }
  } catch (e) {
    print(e);
    return [];
  }
}

//메인화면 퀘스트
Future<List<Map<String, dynamic>>> mainScreenQuest() async {
  List<Map<String, dynamic>> extractedData = [];

  Dio dio = Dio();
  var cookieJar = CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));

  var url = '${dotenv.env['API_URL']}/v1/missions';

  String? token = await storage.read(key: 'accessToken');

  if (token != null) {
    List<Cookie> cookies = [Cookie('accessToken', token)];
    cookieJar.saveFromResponse(Uri.parse(url), cookies);
  }

  try {
    var response = await dio.get(url);

    if (response.statusCode == 200) {
      List<dynamic> market = response.data;

      for (var market in market) {
        Map<String, dynamic> data = {
          'level': market['level'], // 현재 레벨
          // 'initWeight': market['initWeight'], // 초기 가중치
          'expValue': market['expValue'], // 내 진행도
          'weight_previousLevel': market['weight_previousLevel'], // 이전 레벨의 가중치
          'weight_currentLevel': market['weight_currentLevel'], // 현재 레벨의 가중치
          'weight_nextLevel': market['weight_nextLevel'], // 다음 레벨의 가증치
          'gainExp_previousLevel':
              market['gainExp_previousLevel'], // 이전 레벨에서 주는 경험치
          'gainExp_currentLevel':
              market['gainExp_currentLevel'], // 현재 레벨에서 주는 경험치
          'gainExp_nextLevel': market['gainExp_nextLevel'], // 다음 레벨에서 주는 경험치
          'message': market['message'], // 미션 내용
        };
        extractedData.add(data);
      }
      return extractedData;
    } else {
      return [];
    }
  } catch (e) {
    print('${e.toString()} 이게 문제');
    return [];
  }
}
