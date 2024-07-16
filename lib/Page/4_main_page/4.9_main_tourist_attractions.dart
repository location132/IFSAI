import 'package:flutter/material.dart';

import 'package:my_dream/Page/4_main_page/4.9.1_main_tourist_container.dart';
import 'package:my_dream/Page/4_main_page/main_dio/main_screen_dio.dart';

class MainTouristAttractions extends StatefulWidget {
  final VoidCallback onLoadingComplete;

  const MainTouristAttractions({super.key, required this.onLoadingComplete});

  @override
  State<MainTouristAttractions> createState() => _MainTouristAttractionsState();
}

class _MainTouristAttractionsState extends State<MainTouristAttractions> {
  List<Map<String, dynamic>> serverResult = [];

  bool _isFinish = false;

  @override
  void initState() {
    super.initState();
    attractionsGetDio();
  }

  void attractionsGetDio() async {
    serverResult = await mainScreenTourism();
    widget.onLoadingComplete();

    _isFinish = true;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return _isFinish
        ? Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    '000님만을 위한 추천 관광명소',
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
                      Navigator.pushNamed(context, '/DetailTouristAttraction');
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
              const SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    children: [
                      BuildAttractionCard(
                        serverResultData: serverResult[0],
                      ),
                      const SizedBox(width: 14), // 간격 추가
                      BuildAttractionCard(
                        serverResultData: serverResult[1],
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      BuildAttractionCard(
                        serverResultData: serverResult[2],
                      ),
                      const SizedBox(width: 14), // 간격 추가
                      BuildAttractionCard(
                        serverResultData: serverResult[3],
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        : const SizedBox();
  }
}
