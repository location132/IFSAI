import 'package:flutter/material.dart';

class PartnershipRequestAppBar extends StatefulWidget {
  const PartnershipRequestAppBar({super.key});

  @override
  State<PartnershipRequestAppBar> createState() =>
      _PartnershipRequestAppBarState();
}

class _PartnershipRequestAppBarState extends State<PartnershipRequestAppBar> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(
          left: screenWidth * 0.041, right: screenWidth * 0.041),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16.5),
            Row(
              children: [
                SizedBox(
                  height: 24,
                  width: 24,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 24,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      if (FocusScope.of(context).hasFocus) {
                        FocusScope.of(context).unfocus();
                      } else {
                        Navigator.pop(context);
                      }
                    },
                    style: TextButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                    ),
                    padding: EdgeInsets.zero,
                  ),
                ),
                SizedBox(width: screenWidth * 0.3 - 13),
                const Center(
                  child: Text(
                    '파트너쉽 요청',
                    style: TextStyle(
                      color: Color(0xff111111),
                      fontSize: 20,
                      fontFamily: 'Pretendard',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextFormField(
              cursorHeight: 20,
              textAlignVertical: const TextAlignVertical(y: 0.3),
              maxLines: 1,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                filled: true,
                fillColor: const Color(0xfff5f5f5),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 17),
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
                    color: Color(0xffc1c1c1), fontFamily: 'Pretendard'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide.none,
                ),
              ),
              onFieldSubmitted: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
