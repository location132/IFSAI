import 'package:flutter/material.dart';
import 'package:my_dream/Page/7_partnership_request_page/7.1.1_partnership_request_appbar.dart';
import 'package:my_dream/Page/7_partnership_request_page/7.1.2_partnership_request_hot.dart';
import 'package:my_dream/Page/7_partnership_request_page/7.1.3_partnership_request_new.dart';

class PartnershipRequestScreen extends StatefulWidget {
  const PartnershipRequestScreen({super.key});

  @override
  State<PartnershipRequestScreen> createState() =>
      _PartnershipRequestScreenState();
}

class _PartnershipRequestScreenState extends State<PartnershipRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            const SingleChildScrollView(
              child: Column(
                children: [
                  // 앱바
                  PartnershipRequestAppBar(),
                  //-------------
                  SizedBox(height: 21),
                  // 파트너쉽 요청 핫
                  PartnershipRequestHot(),
                  //-------------
                  SizedBox(height: 10),
                  // 파트너쉽 요청 new
                  PartnershipRequestNew(),
                  //--------------
                  SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.keyboard_arrow_left,
                        size: 18,
                        color: Color(0xffc1c1c1),
                      ),
                      SizedBox(width: 5),
                      Text(
                        '1',
                        style: TextStyle(
                          color: Color(0xff6fbf8a),
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '2',
                        style: TextStyle(
                          color: Color(0xff8e8e8e),
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '3',
                        style: TextStyle(
                          color: Color(0xff8e8e8e),
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 18,
                        color: Color(0xffc1c1c1),
                      ),
                      Icon(
                        Icons.keyboard_double_arrow_right,
                        size: 18,
                        color: Color(0xffc1c1c1),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: 20,
              bottom: 70,
              child: FloatingActionButton(
                heroTag: "fab1",
                onPressed: () {},
                backgroundColor: const Color(0xff6fbf8a),
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ),
            Positioned(
              right: 20,
              bottom: 5,
              child: FloatingActionButton(
                heroTag: "fab2",
                onPressed: () {},
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.arrow_upward,
                  size: 32,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
