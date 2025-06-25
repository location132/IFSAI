import 'package:injectable/injectable.dart';
import 'package:my_dream/model/market.dart';
import 'package:my_dream/model/main_screen.dart';
import 'package:my_dream/Page/4_main_page/main_dio/main_screen_dio.dart';

@singleton
class MainScreenRemoteSource {
  // 모든 Market 정보 가져오기 (새로운 스토어)
  Future<List<MarketModel>> getNewStores() async {
    try {
      return await mainScreenNewStore();
    } catch (e) {
      print('새로운 스토어 조회 실패: $e');
      return [];
    }
  }

  // Market 추천 알고리즘으로 추천 받기 (Top 12)
  Future<List<Top12MarketModel>> getTop12Stores() async {
    try {
      return await mainScreenTop12();
    } catch (e) {
      print('Top 12 스토어 조회 실패: $e');
      return [];
    }
  }

  // BEST 리뷰 가져오기
  Future<List<BestReviewModel>> getBestReviews() async {
    try {
      return await mainScreenBestReviews();
    } catch (e) {
      print('베스트 리뷰 조회 실패: $e');
      return [];
    }
  }

  // 특정 위치의 홍보 데이터 조회 (MAIN 위치)
  Future<List<TourismModel>> getTourismData(int size) async {
    try {
      return await mainScreenTourism(size);
    } catch (e) {
      print('관광지 데이터 조회 실패: $e');
      return [];
    }
  }

  // 특정 위치의 홍보 데이터 조회 (ATTRACTION 위치)
  Future<List<TourismModel>> getDetailTourismData(int size) async {
    try {
      return await detailScreenTourism(size);
    } catch (e) {
      print('상세 관광지 데이터 조회 실패: $e');
      return [];
    }
  }

  // 미션 데이터 목록 가져오기
  Future<List<QuestModel>> getQuests() async {
    try {
      return await mainScreenQuest();
    } catch (e) {
      print('퀘스트 조회 실패: $e');
      return [];
    }
  }

  // 미션 수행으로 인한 레벨 가져오기
  Future<QuestLevelModel?> getQuestLevel() async {
    try {
      return await totalQuestLevel();
    } catch (e) {
      print('퀘스트 레벨 조회 실패: $e');
      return null;
    }
  }

  // 모든 관광명소 데이터 가져오기
  Future<List<TourismModel>> getAllAttractions() async {
    try {
      List<Map<String, dynamic>> response = await totalAttractions();

      // Map 데이터를 TourismModel로 변환
      List<TourismModel> attractions = response
          .map((item) => TourismModel(
                imageUrl: item['imageUrl'] ?? '',
                tags: item['attractionName'] ?? '',
                introduce: item['attractionDescription'] ?? '',
              ))
          .toList();

      return attractions;
    } catch (e) {
      print('모든 관광명소 조회 실패: $e');
      return [];
    }
  }
}
