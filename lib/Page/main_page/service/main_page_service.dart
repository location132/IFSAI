import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class MainPageService {
  /*----------------- 로딩 관련 서비스 ----------------- */

  // 로그인 상태에 따른 필요한 완료 카운트 계산
  int getRequiredFinishCount(bool isLoggedIn) {
    return isLoggedIn ? 5 : 4;
  }

  // 로딩 완료 여부 확인
  bool isLoadingComplete(int currentCount, bool isLoggedIn) {
    return currentCount >= getRequiredFinishCount(isLoggedIn);
  }

  /*----------------- 화면 크기 관련 서비스 ----------------- */

  // 화면 크기 정보 추출
  Map<String, double> getScreenSizes(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return {
      'width': size.width,
      'height': size.height,
    };
  }

  /*----------------- 유틸리티 메서드 ----------------- */

  // 패딩 계산
  double calculateHorizontalPadding(double screenWidth) {
    return screenWidth * 0.041;
  }

  double calculateVerticalSpacing(double screenHeight, double ratio) {
    return screenHeight * ratio;
  }
}
