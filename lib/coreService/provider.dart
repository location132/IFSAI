import 'package:flutter/material.dart';

// 로그인 모델
class LoginModel with ChangeNotifier {
  bool _loginStatus = false; // 로그인 확인
  bool _isEmailState = false; // 이메일 성공 여부
  bool _isRetypeEmail = false; // 모달창 이메일 재 입력
  String _isUserEmail = ''; // 유저 이메일
  bool _isFirstClickSNSLogin = true;
  // 사용자가 처음으로 sns 로그인을 클릭 (로그인 중 다른 sns버튼 클릭시 2개 로그인 되는 현상 버그)
  bool _istryEmailCode = false; // 인증번호 입력 키보드 올리기
  String _onProfileImageReceived = ''; // 사용자 프로필 이미지

  bool get loginStatus => _loginStatus;
  bool get isEmailState => _isEmailState;
  bool get isRetypeEmail => _isRetypeEmail;
  String get isUserEmail => _isUserEmail;
  bool get isFirstClickSNSLogin => _isFirstClickSNSLogin;
  bool get istryEmailCode => _istryEmailCode;
  String get onProfileImageReceived => _onProfileImageReceived;

  void setloginStatus(bool loginStatus) {
    _loginStatus = loginStatus;
    notifyListeners();
  }

  void setEmailStatus(bool emailStatus) {
    _isEmailState = emailStatus;
    notifyListeners();
  }

  void setRetypeEmail(bool reTypeEmail) {
    _isRetypeEmail = reTypeEmail;
    notifyListeners();
  }

  void setUserEmailStatus(String userEmail) {
    _isUserEmail = userEmail;
    notifyListeners();
  }

  void setIsFirstClickSNSLogin(bool isFirst) {
    _isFirstClickSNSLogin = isFirst;
    notifyListeners();
  }

  void setIstryEmailCode(bool istryEmailCode) {
    _istryEmailCode = istryEmailCode;
    notifyListeners();
  }

  void setOnProfileImageReceived(String profileImage) {
    _onProfileImageReceived = profileImage;
    notifyListeners();
  }
}

class SearchBarModel with ChangeNotifier {
  bool _isFirstTab = true; // 검색창 처음 클릭
  bool _isSearchScreen = false; // 검색 화면
  bool _isRemoveSearchHistory = false; // 검색 기록 모두 삭제
  bool _isSearchResultsScreen = false; // 검색 후 화면
  bool _isresultSearchAni = true; // 검색화면 애니메이션 작동 중이면 true로 사용자 클릭 막기
  String _isUserTextController = ''; // 사용자가 검색한 값

  bool get isFirstTab => _isFirstTab;
  bool get isSearchScreen => _isSearchScreen;
  bool get isRemoveSearchHistory => _isRemoveSearchHistory;
  bool get isSearchResultsScreen => _isSearchResultsScreen;
  bool get isresultSearchAni => _isresultSearchAni;
  String get isUserTextController => _isUserTextController;

  void setFirstTabStatus(bool firstTab) {
    _isFirstTab = firstTab;
    notifyListeners();
  }

  void setSearchScreenStaus(bool searchScreen) {
    _isSearchScreen = searchScreen;
    notifyListeners();
  }

  void setRemoveSearchHistory(bool searchHistory) {
    _isRemoveSearchHistory = searchHistory;
    notifyListeners();
  }

  void setSearchResultsScreen(bool resultsScreen) {
    _isSearchResultsScreen = resultsScreen;
    notifyListeners();
  }

  void setresultSearchAni(bool resultAni) {
    _isresultSearchAni = resultAni;
    notifyListeners();
  }

  void setSearchController(String searchController) {
    _isUserTextController = searchController;
    notifyListeners();
  }
}

class SearchScreenModel with ChangeNotifier {
  List<Map<String, dynamic>>? _searchHistory; // 검색 히스토리
  List<Map<String, dynamic>>? _popularSearches; // 인기 검색어

  List<Map<String, dynamic>>? get searchHistory => _searchHistory;
  List<Map<String, dynamic>>? get popularSearches => _popularSearches;

  void setStartSearch(List<Map<String, dynamic>> searchHistory) {
    _searchHistory = searchHistory;
    notifyListeners();
  }

  void setPopularSearches(List<Map<String, dynamic>> popularSearches) {
    _popularSearches = popularSearches;
    notifyListeners();
  }
}
