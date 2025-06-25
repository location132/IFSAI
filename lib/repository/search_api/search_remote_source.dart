import 'package:injectable/injectable.dart';
import 'package:my_dream/model/search.dart';
import 'package:my_dream/repository/search_api/search_remote_response.dart';
import 'package:my_dream/Page/5_search_page/search_dio/search_screen_dio.dart';

@injectable
class SearchRemoteSource {
  // 검색 기록 조회
  Future<List<SearchHistoryModel>> getSearchHistory() async {
    try {
      List<SearchHistoryModel> response = await recentSearch();

      // DIO 응답을 직접 모델로 변환
      return response
          .map((item) => SearchHistoryModel(
                content: item.content,
                historyId: item.historyId,
              ))
          .toList();
    } catch (e) {
      print('검색 기록 조회 실패: $e');
      return [];
    }
  }

  // 검색 기록 추가
  Future<bool> addSearchHistory(String searchTerm) async {
    try {
      return await userHistory(searchTerm);
    } catch (e) {
      print('검색 기록 추가 실패: $e');
      return false;
    }
  }

  // 검색 기록 삭제
  Future<bool> removeSearchHistory(int historyId) async {
    try {
      return await deleteSearchHistory(historyId);
    } catch (e) {
      print('검색 기록 삭제 실패: $e');
      return false;
    }
  }

  // 모든 검색 기록 삭제
  Future<bool> removeAllSearchHistory() async {
    try {
      return await deleteAllSearchHistory();
    } catch (e) {
      print('모든 검색 기록 삭제 실패: $e');
      return false;
    }
  }

  // 인기 검색어 조회
  Future<List<PopularSearchModel>> getPopularSearches() async {
    try {
      List<Map<String, dynamic>> response = await popularSearches();

      // DIO 응답을 직접 모델로 변환 (DIO에서는 value0, value1으로 매핑됨)
      return response
          .map((item) => PopularSearchModel(
                searchWord: item['value0']?.toString() ?? '',
                rankChangeValue: _safeParseInt(item['value1']),
              ))
          .toList();
    } catch (e) {
      print('인기 검색어 조회 실패: $e');
      return [];
    }
  }

  // 안전한 int 파싱 헬퍼 메서드
  int _safeParseInt(dynamic value) {
    if (value == null) return 0;
    if (value is int) return value;
    if (value is String) return int.tryParse(value) ?? 0;
    return 0;
  }

  // 인기 검색어 등록/업데이트
  Future<void> updatePopularSearch(String searchTerm) async {
    try {
      await postPopularSearches(searchTerm);
    } catch (e) {
      print('인기 검색어 업데이트 실패: $e');
    }
  }

  // 관련 검색어 조회
  Future<List<String>> getRelatedSearches(String searchTerm) async {
    try {
      List<String> response = await sendRelatedSearch(searchTerm);

      // 이미 String 리스트이므로 그대로 반환
      return response;
    } catch (e) {
      print('관련 검색어 조회 실패: $e');
      return [];
    }
  }
}
