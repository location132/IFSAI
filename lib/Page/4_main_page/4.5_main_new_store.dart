import 'package:flutter/material.dart';
import 'package:my_dream/Page/4_main_page/main_dio/main_screen_dio.dart';

class MainNewStore extends StatefulWidget {
  final VoidCallback onLoadingComplete;

  const MainNewStore({super.key, required this.onLoadingComplete});

  @override
  State<MainNewStore> createState() => _MainNewStoreState();
}

class _MainNewStoreState extends State<MainNewStore> {
  List<Map<String, dynamic>> severResult = [];
  int storCount = 0;

  @override
  void initState() {
    super.initState();
    newStoreGetDio();
  }

  void newStoreGetDio() async {
    severResult = await mainScreenNewStore();
    widget.onLoadingComplete();
    setState(() {
      storCount = severResult.length;
    });
  }

  Widget buildStoreItem(Map<String, dynamic> store, double height) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.01),
      child: Container(
        width: screenWidth * 0.351,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadows: const [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 4,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    // height: screenWidth * 0.255,
                    height: height * 0.56,
                    width: double.infinity,
                    child: Image.network(store['market0'], fit: BoxFit.cover),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          store['market1'],
                          style: const TextStyle(
                            color: Color(0xff111111),
                            fontSize: 15.5,
                            fontFamily: 'PretendardSemiBold',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            store['market2'],
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Color(0xff8e8e8e),
                              fontSize: 12,
                              fontFamily: 'Pretendard',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      height: 1,
                      color: Color(0xfff5f5f5),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            store['market3'],
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Color(0xfff64f4f),
                              fontSize: 12,
                              fontFamily: 'PretendardBold',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                ],
              ),
              Positioned(
                top: 12,
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
                          fontSize: 10,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.041, right: screenWidth * 0.041),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                '신규 스토어',
                style: TextStyle(
                  color: Color(0xff111111),
                  fontSize: 18,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/DetailNewStore');
                },
                child: const Text(
                  '전체보기',
                  style: TextStyle(
                    color: Color(0xff8e8e8e),
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_right,
                color: Color(0xff8e8e8e),
                size: 16,
              )
            ],
          ),
        ),
        SizedBox(height: screenHeight * 0.004),
        SizedBox(
          height: screenHeight * 0.211,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: storCount,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                    left: index == 0 ? screenWidth * 0.031 : 0,
                    right: index == storCount - 1 ? screenWidth * 0.031 : 0),
                child: buildStoreItem(severResult[index], screenHeight * 0.21),
              );
            },
          ),
        ),
      ],
    );
  }
}
