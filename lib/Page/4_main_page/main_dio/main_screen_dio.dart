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

// 메인화면 관광 명소
// Future<List<Map<String, dynamic>>> mainScreenTourism() async {
//   Dio dio = Dio();
//   var url = '${dotenv.env['API_URL']}/v1/attractions';

//   Map<String, dynamic> data = {
//     'page' : 0
//   };

//   try {
//     var serverResult = await dio.get(
//       url,
//     );
//   } catch (e) {}
// }
