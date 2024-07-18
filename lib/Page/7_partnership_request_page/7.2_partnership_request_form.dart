import 'package:flutter/material.dart';
import 'package:my_dream/coreService/widget/custom_appbar.dart';

class PartnershipRequestForm extends StatefulWidget {
  const PartnershipRequestForm({super.key});

  @override
  State<PartnershipRequestForm> createState() => _PartnershipRequestFormState();
}

class _PartnershipRequestFormState extends State<PartnershipRequestForm> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final secondScreenHeight = screenHeight * 0.716;
    final secondScreenWidth = screenWidth - screenWidth * 0.041 * 2;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.041, right: screenWidth * 0.041),
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.064,
                  child: const CustomAppBar(title: '파트너쉽 요청 글쓰기'),
                ),
                SizedBox(height: screenHeight * 0.012),
                SizedBox(
                  height: screenHeight * 0.716,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xffdbdbdb),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x0c000000),
                          offset: Offset(2, 0),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x0c000000),
                          offset: Offset(-2, 0),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: secondScreenHeight * 0.028,
                              left: secondScreenWidth * 0.042),
                          child: const Row(
                            children: [
                              Text(
                                '제목 : ',
                                style: TextStyle(
                                  color: Color(0xff8e8e8e),
                                  fontSize: 16,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '제목을 입력해주세요. ',
                                style: TextStyle(
                                  color: Color(0xffc1c1c1),
                                  fontSize: 16,
                                  fontFamily: 'Pretendard',
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: secondScreenHeight * 0.246,
                          decoration: const BoxDecoration(
                            color: Color(0xffc1c1c1),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.camera_alt_rounded,
                                size: 30,
                                color: Colors.white,
                              ),
                              SizedBox(height: 3),
                              Center(
                                child: Text(
                                  '이미지 불러오기',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'PretendardSemiBold',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(height: secondScreenHeight * 0.025),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: secondScreenWidth * 0.042,
                                  right: secondScreenWidth * 0.042),
                              child: Column(
                                children: [
                                  NewWidget(
                                    screenWidth: screenWidth,
                                    title: '업체명',
                                  ),
                                  SizedBox(height: secondScreenHeight * 0.011),
                                  NewWidget(
                                    screenWidth: screenWidth,
                                    title: '업체위치',
                                  ),
                                  SizedBox(height: secondScreenHeight * 0.011),
                                  NewWidget(
                                    screenWidth: screenWidth,
                                    title: '상세주소',
                                  ),
                                  SizedBox(height: secondScreenHeight * 0.011),
                                  NewWidget(
                                    screenWidth: screenWidth,
                                    title: '전화번호',
                                  ),
                                  SizedBox(height: secondScreenHeight * 0.033),
                                  Container(
                                    height: secondScreenHeight * 0.262,
                                    decoration: BoxDecoration(
                                      color: const Color(0xfff5f5f5),
                                      border: Border.all(
                                        color: const Color(0xffdbdbdb),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: TextFormField(
                                        maxLines: null,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none, // 테두리 제거
                                          hintText: '내용글을 작성해주세요. (500자 내외)',
                                          hintStyle: TextStyle(
                                            color: Color(0xff8e8e8e),
                                            fontFamily: 'Pretendard',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: secondScreenHeight * 0.025),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, '/PartnershipSearch');
                                    },
                                    child: Container(
                                      height: secondScreenHeight * 0.074,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: const Color(0xff6fbf8a),
                                          width: 1.5,
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          '업체정보 한번에 불러오기',
                                          style: TextStyle(
                                            color: Color(0xff6fbf8a),
                                            fontSize: 16,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.027),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff8e8e8e),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      '등록하기',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatefulWidget {
  final String title;
  const NewWidget({
    super.key,
    required this.screenWidth,
    required this.title,
  });

  final double screenWidth;

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${widget.title} :',
          style: const TextStyle(
            color: Color(0xff8e8e8e),
            fontFamily: 'Pretendard',
          ),
        ),
        const Spacer(),
        SizedBox(
          width: widget.screenWidth * 0.675,
          height: 30,
          child: TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.transparent,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: const BorderSide(
                  color: Color(0xffdbdbdb),
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: const BorderSide(
                  color: Color(0xffdbdbdb),
                  width: 1,
                ),
              ),
            ),
            style: const TextStyle(
              fontSize: 12,
              fontFamily: 'Pretendard',
            ),
          ),
        ),
      ],
    );
  }
}
