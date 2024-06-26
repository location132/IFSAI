import 'package:flutter/material.dart';

class MainCategory extends StatelessWidget {
  const MainCategory({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: screenWidth * 0.272,
          width: screenWidth * 0.272,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 10,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )
            ],
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              backgroundColor: Colors.white,
              elevation: 0,
              minimumSize: Size(screenWidth * 0.272, screenWidth * 0.272),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Image.asset('assets/images/category_image_bugger.png'),
                ),
                const SizedBox(height: 10),
                const Text(
                  '식음료',
                  style: TextStyle(
                    color: Color(0xff111111),
                    fontFamily: 'PretendardSemiBold',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        //--------------------------------
        Container(
          height: screenWidth * 0.272,
          width: screenWidth * 0.272,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 10,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )
            ],
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              backgroundColor: Colors.white,
              elevation: 0,
              minimumSize: Size(screenWidth * 0.272, screenWidth * 0.272),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Image.asset('assets/images/category_image_book.png'),
                ),
                const SizedBox(height: 10),
                const Text(
                  '지식',
                  style: TextStyle(
                    color: Color(0xff111111),
                    fontFamily: 'PretendardSemiBold',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        //--------------------------------
        Container(
          height: screenWidth * 0.272,
          width: screenWidth * 0.272,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 10,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )
            ],
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              backgroundColor: Colors.white,
              elevation: 0,
              minimumSize: Size(screenWidth * 0.272, screenWidth * 0.272),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child:
                      Image.asset('assets/images/category_image_culture.png'),
                ),
                const SizedBox(height: 7),
                const Text(
                  '문화',
                  style: TextStyle(
                    color: Color(0xff111111),
                    fontFamily: 'PretendardSemiBold',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
