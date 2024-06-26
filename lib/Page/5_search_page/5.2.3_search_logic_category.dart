import 'package:flutter/material.dart';
import 'package:my_dream/coreService/Sharedpreferences.dart';

class SearchLogicCategory extends StatefulWidget {
  const SearchLogicCategory({super.key});

  @override
  State<SearchLogicCategory> createState() => _SearchLogicCategoryState();
}

class _SearchLogicCategoryState extends State<SearchLogicCategory> {
  PreferencesSearchHistory preferencesSearchHistory =
      PreferencesSearchHistory();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Column(
          children: [
            InkWell(
              onTap: () {},
              splashColor: Colors.transparent,
              child: Container(
                width: screenWidth * 0.18,
                height: screenWidth * 0.18,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                  shadows: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 10,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Icon(
                  Icons.fastfood,
                  color: const Color(0xff6fbf8a),
                  size: screenWidth * 0.0765,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '식음료',
              style: TextStyle(
                color: Color(0xFF111111),
                fontSize: 12,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ],
        ),
        //--------------------------------
        const SizedBox(width: 20),
        Column(
          children: [
            InkWell(
              onTap: () {},
              splashColor: Colors.transparent,
              child: Container(
                width: screenWidth * 0.18,
                height: screenWidth * 0.18,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                  shadows: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 10,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Icon(
                  Icons.attractions,
                  color: const Color(0xff6fbf8a),
                  size: screenWidth * 0.0765,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '문화',
              style: TextStyle(
                color: Color(0xFF111111),
                fontSize: 12,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ],
        ),
        //--------------------------------
        const SizedBox(width: 20),
        Column(
          children: [
            InkWell(
              onTap: () {},
              splashColor: Colors.transparent,
              child: Container(
                width: screenWidth * 0.18,
                height: screenWidth * 0.18,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                  shadows: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 10,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Icon(
                  Icons.local_hospital,
                  color: const Color(0xff6fbf8a),
                  size: screenWidth * 0.0765,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '의료',
              style: TextStyle(
                color: Color(0xFF111111),
                fontSize: 12,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
