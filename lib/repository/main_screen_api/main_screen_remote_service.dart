import 'package:injectable/injectable.dart';
import 'package:my_dream/model/market.dart';
import 'package:my_dream/model/main_screen.dart';
import 'package:my_dream/repository/main_screen_api/main_screen_remote_repository.dart';

@singleton
class MainScreenRemoteService {
  final MainScreenRemoteRepository _mainScreenRemoteRepository;

  MainScreenRemoteService(this._mainScreenRemoteRepository);

  // 새로운 매장 목록 조회
  Future<List<MarketModel>> getNewStores() async {
    return await _mainScreenRemoteRepository.getNewStores();
  }

  // Top12 추천 매장 조회
  Future<List<Top12MarketModel>> getTop12Stores() async {
    return await _mainScreenRemoteRepository.getTop12Stores();
  }

  // 베스트 리뷰 조회
  Future<List<BestReviewModel>> getBestReviews() async {
    return await _mainScreenRemoteRepository.getBestReviews();
  }

  // 관광지 정보 조회
  Future<List<TourismModel>> getTourismData(int size) async {
    return await _mainScreenRemoteRepository.getTourismData(size);
  }

  // 퀘스트 목록 조회
  Future<List<QuestModel>> getQuests() async {
    return await _mainScreenRemoteRepository.getQuests();
  }

  // 퀘스트 레벨 조회
  Future<QuestLevelModel?> getQuestLevel() async {
    return await _mainScreenRemoteRepository.getQuestLevel();
  }

  // 모든 관광명소 조회
  Future<List<TourismModel>> getAllAttractions() async {
    return await _mainScreenRemoteRepository.getAllAttractions();
  }

  // 디테일 관광지 정보 조회
  Future<List<TourismModel>> getDetailTourismData(int size) async {
    return await _mainScreenRemoteRepository.getDetailTourismData(size);
  }
}
