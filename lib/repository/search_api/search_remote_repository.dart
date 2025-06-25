import 'package:injectable/injectable.dart';
import 'package:my_dream/model/search.dart';
import 'package:my_dream/repository/search_api/search_remote_source.dart';

@injectable
class SearchRemoteRepository {
  final SearchRemoteSource _searchRemoteSource;

  SearchRemoteRepository(this._searchRemoteSource);

  // 검색 기록 조회
  Future<List<SearchHistoryModel>> getSearchHistory() async {
    try {
      return await _searchRemoteSource.getSearchHistory();
    } catch (e) {
      print('Repository: 검색 기록 조회 실패 - $e');
      return [];
    }
  }

  // 검색 기록 추가
  Future<bool> addSearchHistory(String searchTerm) async {
    if (searchTerm.trim().isEmpty) {
      print('Repository: 검색어가 비어있습니다');
      return false;
    }

    try {
      return await _searchRemoteSource.addSearchHistory(searchTerm.trim());
    } catch (e) {
      print('Repository: 검색 기록 추가 실패 - $e');
      return false;
    }
  }

  // 검색 기록 삭제
  Future<bool> removeSearchHistory(int historyId) async {
    try {
      return await _searchRemoteSource.removeSearchHistory(historyId);
    } catch (e) {
      print('Repository: 검색 기록 삭제 실패 - $e');
      return false;
    }
  }

  // 모든 검색 기록 삭제
  Future<bool> removeAllSearchHistory() async {
    try {
      return await _searchRemoteSource.removeAllSearchHistory();
    } catch (e) {
      print('Repository: 모든 검색 기록 삭제 실패 - $e');
      return false;
    }
  }

  // 인기 검색어 조회
  Future<List<PopularSearchModel>> getPopularSearches() async {
    try {
      List<PopularSearchModel> searches =
          await _searchRemoteSource.getPopularSearches();
      // 필요시 추가 데이터 처리 로직
      return searches.take(10).toList(); // 최대 10개만 반환
    } catch (e) {
      print('Repository: 인기 검색어 조회 실패 - $e');
      return [];
    }
  }

  // 인기 검색어 등록/업데이트
  Future<void> updatePopularSearch(String searchTerm) async {
    if (searchTerm.trim().isEmpty) {
      print('Repository: 검색어가 비어있습니다');
      return;
    }

    try {
      await _searchRemoteSource.updatePopularSearch(searchTerm.trim());
    } catch (e) {
      print('Repository: 인기 검색어 업데이트 실패 - $e');
    }
  }

  // 관련 검색어 조회
  Future<List<String>> getRelatedSearches(String searchTerm) async {
    if (searchTerm.trim().isEmpty) {
      return [];
    }

    try {
      List<String> relatedSearches =
          await _searchRemoteSource.getRelatedSearches(searchTerm.trim());
      // 중복 제거 및 정리
      return relatedSearches.toSet().toList();
    } catch (e) {
      print('Repository: 관련 검색어 조회 실패 - $e');
      return [];
    }
  }
}
