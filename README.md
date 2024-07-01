# IFSAI


## 🔍 프로젝트 개요
잎 사이는  제가 지금까지 공부했던 Flutter 기술을 집약적으로 보여줄 수 있는  핵심 프로젝트입니다.<br />
이 프로젝트를 통해 제가 공부하고 경험했던 Flutter의 상태관리와 생명주기 다음으로 사용자 친화적인 UX디자인과<br />
마지막으로 각종 Rive 애니메이션 등, 다양한 기술을 적용하고 실험했습니다.<br /><br />
잎사이는 오는 2월에 건국대학교 글로컬캠퍼스 학생들에게 배포될 예정으로<br />실제 시장에서의 반응을 통해 더 성장하는 계기가 될 수 있는 저의 핵심 프로젝트 입니다.
<br />
<br />

<img src="https://github.com/location132/IFSAI/assets/132702102/ab4a1dcf-468c-434f-8197-9d32cd519ce2" width="20" alt="Project Image"> <a href="https://www.figma.com/design/8gDYtHK41c2CYetQAYh1v0/잎사이?node-id=0-1&t=PZcXK9YipDUtbpvK-0"><strong>피그마 바로가기 (Web)</strong></a> 
<br />
 <img src="https://github.com/location132/IFSAI/assets/132702102/81fbb182-9ce0-4881-b81c-d3b47c1feeb0" width="20" alt="Project Image"> <a href="https://intriguing-cowl-e9d.notion.site/Flutter-cf9046ed0d9c4bc48db0e3e0d4110567?pvs=4"><strong>노션 바로가기 (Web)</strong></a>


<br />

## 팀원 소개


| 이정원 | 박상진 | 장하빈 | 
| :-: | :-: | :-: | 
| Flutter 개발자 | 백엔드 개발자 | UI/UX 디자이너 |

<br />

## 💻 개발 환경

### APP
<img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=Dart&logoColor=white"> <img src="https://img.shields.io/badge/flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white">

### BACKEND
![Java](https://img.shields.io/badge/Java-007396.svg?&style=for-the-badge&logo=Java&logoColor=white)
![SpringBoot](https://img.shields.io/badge/SpringBoot-6DB33F.svg?&style=for-the-badge&logo=springboot&logoColor=white)
![springsecurity](https://img.shields.io/badge/springsecurity-6DB33F.svg?&style=for-the-badge&logo=springsecurity&logoColor=white)
![amazons3](https://img.shields.io/badge/amazons3-569A31.svg?&style=for-the-badge&logo=amazons3&logoColor=white)
![swagger](https://img.shields.io/badge/swagger-85EA2D.svg?&style=for-the-badge&logo=swagger&logoColor=white)

### Collaboration
<img src="https://img.shields.io/badge/Notion-000000?style=for-the-badge&logo=Notion&logoColor=white"> <img src="https://img.shields.io/badge/Discord-5865F2?style=for-the-badge&logo=Discord&logoColor=white"> <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">

<br />

## 📝 화면 구성 (메인화면)
| 쉬머효과, 스켈레톤UI | 검색창과 로고 |
| :-: | :-: |
|<img src="https://github.com/location132/IFSAI/assets/132702102/02555181-cb79-462c-8515-bfdba56cb0d6" width="300"> | <img src="https://github.com/location132/IFSAI/assets/132702102/adb1ea85-65ed-4c2d-90fe-f14be593e65e" width="300">
| 메인화면 | 검색화면 |
|<img src="https://github.com/location132/IFSAI/assets/132702102/3292847c-6ad2-4776-a7cf-3f3c0f4fc4b6" width="300"> | <img src="https://github.com/location132/IFSAI/assets/132702102/514af67d-0dd3-4dfb-ad1b-b4015caa7952" width="300">|


<br />

## 📌 특이사항

![image](https://github.com/location132/IFSAI/assets/132702102/55e079e8-3a04-4920-9289-eabda4addb4a)
- dotENV 파일 관리
- 상태관리, 생명주기, 애니메이션, API연결 등
- 커뮤니케이션 오류 없이 협업기



<br />

## 📁 아키텍쳐

```
lib
├── Page
│   ├── 1_start_page
│   │   └── 1_start_Page.dart
│   ├── 2_login_page
│   │   ├── 2.1_login_error.dart
│   │   ├── 2_login.dart
│   │   └── login
│   │       └── snsLogin
│   │           ├── apple_login.dart
│   │           ├── google_login.dart
│   │           ├── kakao_login.dart
│   │           └── naver_login.dart
│   ├── 3_student_email_page
│   │   ├── 3.1_student_email.dart
│   │   ├── 3.2_student_email_check.dart
│   │   ├── 3.3_error_dialog.dart
│   │   ├── 3.4_success_dialog.dart
│   │   ├── 3.5_email_error_dialog.dart
│   │   ├── 3.6_students_success_screen.dart
│   │   ├── 3.7_loginChageToSns
│   │   │   ├── 3.7.1_students_snstoggle_naver.dart
│   │   │   └── 3.7.2_students_snstoggle_kakao.dart
│   │   ├── 3.7_student_account_transfer_dialog.dart
│   │   └── 3_student_identity_detail.dart
│   ├── 4_main_page
│   │   ├── 4.10_main_quest.dart
│   │   ├── 4.11_main_shimmer.dart
│   │   ├── 4.1_main_logo_searchbar.dart
│   │   ├── 4.2_main_adBanner.dart
│   │   ├── 4.3_main_category.dart
│   │   ├── 4.4.1_main_top_12_container.dart
│   │   ├── 4.4_main_top12.dart
│   │   ├── 4.5_main_new_store.dart
│   │   ├── 4.6.1_main_best_review_contauner.dart
│   │   ├── 4.6_main_best_review.dart
│   │   ├── 4.7_main_hot_promotion.dart
│   │   ├── 4.9.1_main_tourist_container.dart
│   │   ├── 4.9_main_tourist_attractions.dart
│   │   ├── 4_main_screen.dart
│   │   ├── main_detail_page
│   │   │   └── 1_detail_new_store.dart
│   │   └── main_dio
│   │       └── main_screen_dio.dart
│   ├── 5_search_page
│   │   ├── 5.1.1_searcscreen.dart
│   │   ├── 5.2.1_search_logic_history.dart
│   │   ├── 5.2.2_search_logic_keywords.dart
│   │   ├── 5.2.3_search_logic_category.dart
│   │   ├── 5.2.4_search_logic_trending.dart
│   │   └── 5.2_search_logic.dart
│   ├── 6_search_results_page
│   │   └── 6_search_results_screen.dart
│   └── 7_partnership_request_page
│       ├── 7.1.1_partnership_request_appbar.dart
│       ├── 7.1.2_partnership_request_hot.dart
│       ├── 7.1.3_partnership_request_new.dart
│       └── 7.1_partnership_request_screen.dart
├── coreService
│   ├── Sharedpreferences.dart
│   ├── login_dio.dart
│   ├── provider.dart
│   ├── routes.dart
│   ├── start_service_maintenance_notice.dart
│   └── verifty_form.dart
└── main.dart

