import 'package:injectable/injectable.dart';
import 'package:my_dream/model/search.dart';
import 'package:my_dream/repository/search_api/search_remote_repository.dart';

@injectable
class SearchRemoteService {
  final SearchRemoteRepository _searchRemoteRepository;

  SearchRemoteService(this._searchRemoteRepository);

  // 검색 기록 조회
  Future<List<SearchHistoryModel>> getSearchHistory() async {
    try {
      List<SearchHistoryModel> history =
          await _searchRemoteRepository.getSearchHistory();

      // 비즈니스 로직: 최신순으로 정렬
      history.sort((a, b) => b.historyId.compareTo(a.historyId));

      return history;
    } catch (e) {
      print('Service: 검색 기록 조회 실패 - $e');
      return [];
    }
  }

  // 검색 기록 추가 (비즈니스 로직 포함)
  Future<bool> addSearchHistory(String searchTerm) async {
    // 비즈니스 로직: 검색어 정규화
    String normalizedTerm = _normalizeSearchTerm(searchTerm);

    if (normalizedTerm.isEmpty) {
      print('Service: 유효하지 않은 검색어입니다');
      return false;
    }

    try {
      return await _searchRemoteRepository.addSearchHistory(normalizedTerm);
    } catch (e) {
      print('Service: 검색 기록 추가 실패 - $e');
      return false;
    }
  }

  // 검색 기록 삭제
  Future<bool> removeSearchHistory(String historyId) async {
    try {
      int id = int.tryParse(historyId) ?? 0;
      if (id <= 0) {
        print('Service: 유효하지 않은 기록 ID입니다');
        return false;
      }

      return await _searchRemoteRepository.removeSearchHistory(id);
    } catch (e) {
      print('Service: 검색 기록 삭제 실패 - $e');
      return false;
    }
  }

  // 모든 검색 기록 삭제
  Future<bool> removeAllSearchHistory() async {
    try {
      return await _searchRemoteRepository.removeAllSearchHistory();
    } catch (e) {
      print('Service: 모든 검색 기록 삭제 실패 - $e');
      return false;
    }
  }

  // 인기 검색어 조회 (비즈니스 로직 포함)
  Future<List<PopularSearchModel>> getPopularSearches() async {
    try {
      List<PopularSearchModel> searches =
          await _searchRemoteRepository.getPopularSearches();

      // 비즈니스 로직: 랭킹 순으로 정렬 및 필터링
      searches =
          searches.where((search) => search.searchWord.isNotEmpty).toList();

      return searches;
    } catch (e) {
      print('Service: 인기 검색어 조회 실패 - $e');
      return [];
    }
  }

  // 검색 수행 및 인기 검색어 업데이트
  Future<void> performSearch(String searchTerm) async {
    String normalizedTerm = _normalizeSearchTerm(searchTerm);

    if (normalizedTerm.isEmpty) {
      return;
    }

    try {
      // 병렬로 검색 기록 추가 및 인기 검색어 업데이트
      await Future.wait([
        addSearchHistory(normalizedTerm),
        _searchRemoteRepository.updatePopularSearch(normalizedTerm),
      ]);
    } catch (e) {
      print('Service: 검색 수행 실패 - $e');
    }
  }

  // 관련 검색어 조회 (비즈니스 로직 포함)
  Future<List<String>> getRelatedSearches(String searchTerm) async {
    String normalizedTerm = _normalizeSearchTerm(searchTerm);

    if (normalizedTerm.isEmpty) {
      return [];
    }

    try {
      List<String> relatedSearches =
          await _searchRemoteRepository.getRelatedSearches(normalizedTerm);

      // 비즈니스 로직: 빈 검색어 제거 및 길이 제한
      return relatedSearches
          .where((search) => search.trim().isNotEmpty)
          .where((search) => search.length <= 50) // 최대 50자 제한
          .take(10) // 최대 10개
          .toList();
    } catch (e) {
      print('Service: 관련 검색어 조회 실패 - $e');
      return [];
    }
  }

  // 검색어 정규화 (비즈니스 로직)
  String _normalizeSearchTerm(String searchTerm) {
    return searchTerm
        .trim()
        .replaceAll(RegExp(r'\s+'), ' ') // 연속된 공백을 하나로
        .toLowerCase(); // 소문자로 변환 (필요시)
  }
}
