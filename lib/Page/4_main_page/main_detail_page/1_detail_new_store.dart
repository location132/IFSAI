import 'package:flutter/material.dart';
import 'package:my_dream/Page/4_main_page/main_dio/main_screen_dio.dart';
import 'package:my_dream/coreService/Shimmer/newStore_shimmer.dart';

class DetailNewStore extends StatefulWidget {
  const DetailNewStore({super.key});

  @override
  State<DetailNewStore> createState() => _DetailNewStoreState();
}

class _DetailNewStoreState extends State<DetailNewStore> {
  final TextEditingController _textEditingController = TextEditingController();
  List<Map<String, dynamic>> newStore = [];
  List<Map<String, dynamic>> originalStore = []; // 원래의 스토어 리스트 백업
  String page = '0';
  int storeCount = 0;
  bool _isLoadingFinish = false;
  bool _opacityText = false;
  bool _isFirstScreen = true;

  @override
  void initState() {
    super.initState();
    newStoreToDio();
  }

  void newStoreToDio() async {
    originalStore = await mainScreenNewStoreDetail(page);
    newStore = List.from(originalStore); // 원래의 스토어 리스트 백업
    setState(() {
      storeCount = newStore.length;
    });
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      _isLoadingFinish = true;
    });
  }

  Widget newStoreContainer(Map<String, dynamic> store) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.041, right: screenWidth * 0.041),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: screenHeight * 0.125,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      const Color(0x0c000000).withOpacity(0.03),
                      const Color(0x0c000000).withOpacity(0.03),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                child: Container(
                  width: double.infinity,
                  height: screenHeight * 0.12,
                  decoration: BoxDecoration(
                    color: const Color(0xfffdfdfd),
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x0c000000),
                        offset: Offset(2, 0),
                        blurRadius: 6,
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        color: Color(0x0c000000),
                        offset: Offset(-2, 0),
                        blurRadius: 6,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4),
                                bottomLeft: Radius.circular(4)),
                            child: SizedBox(
                                width: screenHeight * 0.12,
                                height: double.infinity,
                                child: Image.network(store['market0'],
                                    fit: BoxFit.cover)),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, right: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      ConstrainedBox(
                                        constraints: BoxConstraints(
                                          maxWidth: screenWidth * 0.55,
                                        ),
                                        child: RichText(
                                          overflow: TextOverflow.ellipsis,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: store['market1'],
                                                style: const TextStyle(
                                                  color: Color(0xff111111),
                                                  fontSize: 16,
                                                  fontFamily: 'Pretendard',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              const TextSpan(
                                                text: '   ',
                                              ),
                                              TextSpan(
                                                text:
                                                    '현재 지점에서부터 ${store['market6']}',
                                                style: const TextStyle(
                                                  color: Color(0xff6fbf8a),
                                                  fontSize: 12,
                                                  fontFamily: 'Pretendard',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: screenWidth * 0.008),
                                  Text(
                                    store['market2'],
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Color(0xff5b5b5b),
                                      fontSize: 12,
                                      fontFamily: 'Pretendard',
                                    ),
                                  ),
                                  SizedBox(height: screenWidth * 0.014),
                                  SizedBox(
                                    width: screenWidth * 0.7,
                                    child: Text(
                                      '영업시간 : ${store['market4']} ~ ${store['market5']} ㅣ 매주 화요일 휴무',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Color(0xff393939),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: screenWidth * 0.008),
                                  const Divider(
                                    height: 1,
                                    color: Color(0xfff5f5f5),
                                  ),
                                  SizedBox(height: screenWidth * 0.008),
                                  SizedBox(
                                    width: screenWidth * 0.7,
                                    child: Text(
                                      store['market3'],
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Color(0xfff64f4f),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 10,
                        child: Container(
                          height: 18,
                          decoration: const BoxDecoration(
                            color: Color(0xff6fbf8a),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 6, right: 5),
                            child: Center(
                              child: Text(
                                'NEW',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 7),
      ],
    );
  }

  //검색 완료 후
  void isUserSearch(String value) async {
    if (value.isEmpty) {
      setState(() {
        _isFirstScreen = true;
        _opacityText = false;
      });
    } else {
      List<Map<String, dynamic>> filteredStores = originalStore.where((store) {
        return store.toString().contains(value);
      }).toList();

      setState(() {
        newStore = filteredStores;
        _opacityText = true;
        _isFirstScreen = false;
      });
    }
  }

  //뒤로가기 로직
  void reSetScreen() {
    if (_opacityText) {
      setState(() {
        _textEditingController.text = '';
        _isFirstScreen = true;
        _opacityText = false;
      });
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            IgnorePointer(
              ignoring: !_isLoadingFinish,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 420),
                opacity: _isLoadingFinish ? 1.0 : 0.0,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.03,
                              right: screenWidth * 0.041),
                          child: Column(
                            children: [
                              SizedBox(
                                height: screenHeight * 0.064,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      icon: const Icon(
                                          Icons.arrow_back_ios_rounded,
                                          size: 24),
                                      onPressed: () {
                                        reSetScreen();
                                      },
                                      style: TextButton.styleFrom(
                                        splashFactory: NoSplash.splashFactory,
                                      ),
                                      padding: EdgeInsets.zero,
                                    ),
                                    const Expanded(
                                      child: Center(
                                        child: Text(
                                          '신규 스토어',
                                          style: TextStyle(
                                            color: Color(0xff111111),
                                            fontSize: 20,
                                            fontFamily: 'Pretendard',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0,
                                      child: IconButton(
                                        icon: const Icon(
                                            Icons.arrow_back_ios_rounded,
                                            size: 24),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 1),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: screenWidth * 0.011),
                                child: SizedBox(
                                  height: 40,
                                  child: TextFormField(
                                    controller: _textEditingController,
                                    cursorHeight: 20,
                                    textAlignVertical:
                                        const TextAlignVertical(y: 0.3),
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 30, vertical: 10),
                                      filled: true,
                                      fillColor: const Color(0xfff5f5f5),
                                      prefixIcon: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 17),
                                        child: Transform.translate(
                                          offset: const Offset(10, 0),
                                          child: const Icon(
                                            Icons.search,
                                            size: 30,
                                            color: Color(0xff6fbf8a),
                                          ),
                                        ),
                                      ),
                                      hintText: '검색어를 입력해주세요.',
                                      hintStyle: const TextStyle(
                                          color: Color(0xffc1c1c1),
                                          fontFamily: 'Pretendard'),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(28),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                    onFieldSubmitted: (value) {
                                      isUserSearch(value);
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          // 처음 스크린
                          AnimatedOpacity(
                            duration: const Duration(milliseconds: 420),
                            opacity: _isFirstScreen ? 1.0 : 0.0,
                            child: IgnorePointer(
                              ignoring: _isFirstScreen,
                              child: ListView.builder(
                                itemCount: originalStore.length,
                                itemBuilder: (context, index) {
                                  return newStoreContainer(
                                      originalStore[index]);
                                },
                              ),
                            ),
                          ),
                          //두번째 스크린
                          AnimatedOpacity(
                            duration: const Duration(milliseconds: 420),
                            opacity: !_isFirstScreen ? 1.0 : 0.0,
                            child: IgnorePointer(
                              ignoring: !_isFirstScreen,
                              child: ListView.builder(
                                itemCount: newStore.length + 1,
                                itemBuilder: (context, index) {
                                  if (index == newStore.length) {
                                    return IgnorePointer(
                                      ignoring: _opacityText,
                                      child: AnimatedOpacity(
                                        opacity: !_opacityText ? 0.0 : 1.0,
                                        duration:
                                            const Duration(milliseconds: 20),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: screenHeight * 0.031),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '원하는 업체가 없으신가요?',
                                                style: TextStyle(
                                                  color: Color(0xffc1c1c1),
                                                  fontSize: 12,
                                                  fontFamily: 'Pretendard',
                                                ),
                                              ),
                                              SizedBox(width: 7),
                                              Text(
                                                '파트너십 요청하러 가기',
                                                style: TextStyle(
                                                  color: Color(0xff8e8e8e),
                                                  fontSize: 12,
                                                  fontFamily: 'Pretendard',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  return newStoreContainer(newStore[index]);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IgnorePointer(
              ignoring: _isLoadingFinish,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 420),
                opacity: !_isLoadingFinish ? 1.0 : 0.0,
                child: const NewStoreShimmer(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
