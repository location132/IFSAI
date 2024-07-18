import 'package:flutter/material.dart';
import 'package:my_dream/coreService/widget/custom_appbar.dart';
import 'package:my_dream/coreService/widget/searchbar.dart';

class PartnershipSearch extends StatefulWidget {
  const PartnershipSearch({super.key});

  @override
  State<PartnershipSearch> createState() => _PartnershipSearchState();
}

class _PartnershipSearchState extends State<PartnershipSearch> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
            left: screenWidth * 0.041, right: screenWidth * 0.041),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.064,
              child: const CustomAppBar(title: '업체 검색'),
            ),
            const Searchbar(
              textEditing: '업체명을 입력해주세요.',
            ),
            SizedBox(height: screenHeight * 0.072),
            const Center(
              child: Text(
                '원하시는 업체를 찾아보세요.\n예) 잎사이 건대점',
                style: TextStyle(
                  color: Color(0xffc1c1c1),
                  fontFamily: 'Pretendard',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
