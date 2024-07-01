import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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
          'market2': place['description']
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
    'page': 0,
    'size': 10,
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
