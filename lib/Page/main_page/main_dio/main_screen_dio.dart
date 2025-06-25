import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:my_dream/Page/2_login_page/login_dio/login_dio.dart';
import 'package:my_dream/coreService/core/dio/dio_core.dart';
import 'package:my_dream/model/market.dart';
import 'package:my_dream/model/main_screen.dart';

// 모든 Market 정보 가져오기 [ distance 는 sort가 DISTANCE일때만 넣어주세요. ] ( 69 )
Future<List<MarketModel>> mainScreenNewStore() async {
  List<MarketModel> extractedData = [];

  Dio dio = Dio();

  var url = '${dotenv.env['API_URL']}/v1/markets';

  Map<String, dynamic> requestData = {
    'sort': 'HIGHEST_DISCOUNT',
    "locationX": 0,
    "locationY": 0,
    'page': 0
  };

  try {
    var response = await dio.get(url, queryParameters: requestData);

    if (response.statusCode == 200) {
      print('dio69');

      List<dynamic> market = response.data;

      for (var market in market) {
        MarketModel marketModel = MarketModel(
          marketId: market['marketId'],
          mainCategory: market['mainCategory'] ?? '', // 기본값 제공
          locationX: market['locationX'].toDouble(),
          locationY: market['locationY'].toDouble(),
          marketImage: market['marketImage'],
          marketName: market['marketName'],
          marketDescription: market['marketDescription'],
          detailAddress: market['detailAddress'],
          eventMessage: market['eventMessage'],
          openTime: market['openTime'],
          closeTime: market['closeTime'],
          closedDays: market['closedDays'],
          averageReviewScore: market['averageReviewScore'].toDouble(),
          reviewCount: market['reviewCount'],
          maxDiscountRate: market['maxDiscountRate'],
        );

        extractedData.add(marketModel);
      }
      return extractedData;
    } else {
      return [];
    }
  } catch (e) {
    print('dio 69 Error');
    print(e);
    return [];
  }
}

// Market 추천 알고리즘으로 추천 받기 ( 68 )
Future<List<Top12MarketModel>> mainScreenTop12() async {
  Dio dio = Dio();

  var url = '${dotenv.env['API_URL']}/v1/markets/recommendation';

  List<Top12MarketModel> extractedData = [];

  Map<String, dynamic> data = {
    'marketCount': 12,
  };

  try {
    var response = await dio.get(url, queryParameters: data);

    if (response.statusCode == 200) {
      print('dio68');
      List<dynamic> market = response.data;
      for (var market in market) {
        Top12MarketModel top12Model = Top12MarketModel(
          marketId: market['marketId'],
          marketImage: market['marketImage'],
          marketName: market['marketName'],
          marketDescription: market['marketDescription'],
          averageReviewScore: market['averageReviewScore'].toDouble(),
          reviewCount: market['reviewCount'],
        );
        extractedData.add(top12Model);
      }

      return extractedData;
    } else {
      return [];
    }
  } catch (e) {
    print('dio 68 Error');
    print(e);
    return [];
  }
}

// [ 비 - 로그인 ] BEST 리뷰 가져오기 ( 55 )
Future<List<BestReviewModel>> mainScreenBestReviews() async {
  Dio dio = Dio();
  List<BestReviewModel> extractedData = [];

  var cookieJar = CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));

  var url = '${dotenv.env['API_URL']}/v1/markets/reviews/top';
  String? token = await storage.read(key: 'accessToken');

  if (token != null) {
    List<Cookie> cookies = [Cookie('accessToken', token)];
    cookieJar.saveFromResponse(Uri.parse(url), cookies);
  }

  Map<String, dynamic> data = {
    'page': 0,
    'size': 3,
    'sort': ['writeDate,desc'] // 수정된 정렬 파라미터
  };

  try {
    var serverResult = await dio.get(url, queryParameters: data);

    if (serverResult.statusCode == 200) {
      print('dio55');
      if (serverResult.data.toString().contains('errorCode: -35')) {
        await dioCore(serverResult.data);
        return await mainScreenBestReviews();
      }
      List<dynamic> reviewsData = serverResult.data;
      for (var reviewsData in reviewsData) {
        BestReviewModel reviewModel = BestReviewModel(
          reviewId: reviewsData['reviewId'],
          marketId: reviewsData['marketId'],
          writeDate: reviewsData['writeDate'],
          reviewContent: reviewsData['reviewContent'],
          reviewImage: reviewsData['images'][0]['image'],
          reviewerEmail: reviewsData['reviewerEmail'],
          recommendCount: reviewsData['recommendCount'],
          recommendation: reviewsData['recommendation'],
          reviewerImage: reviewsData['reviewerImage'],
        );
        extractedData.add(reviewModel);
      }

      return extractedData;
    } else {
      return [];
    }
  } catch (e) {
    print('dio 55 Error');
    print('Error: $e');
    return [];
  }
}

// 특정 위치의 홍보 데이터 조회 [ MAIN : 메인 , ATTRACTION : 관광 조회 페이지 ] ( 91 )
// 특정 위치의 홍보 데이터 조회 (loaction = MAIN) ( 91_1 )
Future<List<TourismModel>> mainScreenTourism(int size) async {
  Dio dio = Dio();
  var url = '${dotenv.env['API_URL']}/v1/MAIN/promotions';
  List<TourismModel> extractedData = [];

  Map<String, dynamic> data = {
    'page': 0,
    'size': size,
    'sort': ['String']
  };

  try {
    var serverResult = await dio.get(url, queryParameters: data);

    if (serverResult.statusCode == 200) {
      print('dio91_1');
      List<dynamic> place = serverResult.data;

      for (var place in place) {
        TourismModel tourismModel = TourismModel(
          imageUrl: place['imageUrl'],
          tags: place['tags'].join(' '), // 배열을 문자열로 변환
          introduce: place['introduce'],
        );

        extractedData.add(tourismModel);
      }

      return extractedData;
    } else {
      return [];
    }
  } catch (e) {
    print('dio 91_1 Error');
    print(e);
    return [];
  }
}

// 특정 위치의 홍보 데이터 조회 (location=ATTRACTION) ( 91_2 )
Future<List<TourismModel>> detailScreenTourism(int size) async {
  Dio dio = Dio();
  var url = '${dotenv.env['API_URL']}/v1/ATTRACTION/promotions';
  List<TourismModel> extractedData = [];

  Map<String, dynamic> data = {
    'page': 0,
    'size': size,
    'sort': ['String']
  };

  try {
    var serverResult = await dio.get(url, queryParameters: data);

    if (serverResult.statusCode == 200) {
      print('dio91_2');
      List<dynamic> place = serverResult.data;

      for (var place in place) {
        TourismModel tourismModel = TourismModel(
          imageUrl: place['imageUrl'],
          tags: place['tags'].join(' '), // 배열을 문자열로 변환
          introduce: place['introduce'],
        );

        extractedData.add(tourismModel);
      }

      return extractedData;
    } else {
      return [];
    }
  } catch (e) {
    print('dio 91_2 Error');
    print(e);
    return [];
  }
}

// [ 로그인 ] 미션 데이터 목록 가져오기 ( 92 )
Future<List<QuestModel>> mainScreenQuest() async {
  List<QuestModel> extractedData = [];

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
      print('dio92');
      List<dynamic> market = response.data;
      if (response.data.toString().contains('errorCode: -35')) {
        await dioCore(response.data);
        return await mainScreenQuest();
      }

      for (var market in market) {
        QuestModel questModel = QuestModel(
          level: market['level'],
          expValue: market['expValue'],
          weightPreviousLevel: market['weight_previousLevel'],
          weightCurrentLevel: market['weight_currentLevel'],
          weightNextLevel: market['weight_nextLevel'],
          gainExpPreviousLevel: market['gainExp_previousLevel'],
          gainExpCurrentLevel: market['gainExp_currentLevel'],
          gainExpNextLevel: market['gainExp_nextLevel'],
          message: market['message'],
        );
        extractedData.add(questModel);
      }
      return extractedData;
    } else {
      return [];
    }
  } catch (e) {
    print('dio 92 Error');
    return [];
  }
}

// [ 로그인 ] 미션 수행으로 인한 레벨 가져오기 ( 93 )
Future<QuestLevelModel?> totalQuestLevel() async {
  Dio dio = Dio();

  var cookieJar = CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));

  var url = '${dotenv.env['API_URL']}/v1/missions/level';

  String? token = await storage.read(key: 'accessToken');

  if (token != null) {
    List<Cookie> cookies = [Cookie('accessToken', token)];
    cookieJar.saveFromResponse(Uri.parse(url), cookies);
  }

  try {
    var response = await dio.get(url);
    if (response.statusCode == 200) {
      print('dio93');
      Map<String, dynamic> serverData = response.data;

      QuestLevelModel questLevelModel = QuestLevelModel(
        level: serverData['level'],
        totalExp: serverData['userExp'], // userExp를 totalExp로 매핑
        currentLevelExp: serverData['currentLevelExp'] ?? 0, // 없을 경우 0으로 기본값
        nextLevelExp: serverData['nextLevelExp'] ?? 0, // 없을 경우 0으로 기본값
      );

      return questLevelModel;
    } else {
      print('dio93 Error');
      return null;
    }
  } catch (e) {
    print('dio93 Error');
    return null;
  }
}

// 모든 관광명소 데이터 가져오기 ( 17 )
Future<List<Map<String, dynamic>>> totalAttractions() async {
  List<Map<String, dynamic>> serverData = [];
  Dio dio = Dio();

  var url = '${dotenv.env['API_URL']}/v1/attractions';

  Map<String, dynamic> data = {
    'pageable': {"page": 0, "size": 10},
    'sort': 'RECENTLY_UPLOAD'
  };

  try {
    var response = await dio.get(url, queryParameters: data);

    if (response.statusCode == 200) {
      print('dio17');
      List<dynamic> place = [];
      place = response.data;

      for (var place in place) {
        Map<String, dynamic> data = {
          'attractionId': place['attractionId'],
          'attractionName': place['attractionName'],
          'attractionDescription': place['attractionDescription'],
          'imageUrl': place['imageUrl'],
          'openTime': place['openTime'],
          'closeTime': place['closeTime'],
          'eventMessage': place['eventMessage'],
          'locationX': place['locationX'],
          'locationY': place['locationY'],
        };

        serverData.add(data);
      }
      return serverData;
    } else {
      print('dio17 Error');
      return [];
    }
  } catch (e) {
    print(e);
    print('dio17 Error');
    return [];
  }
}
