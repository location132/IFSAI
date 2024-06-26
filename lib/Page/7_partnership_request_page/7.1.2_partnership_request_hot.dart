import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartnershipRequestHot extends StatefulWidget {
  const PartnershipRequestHot({super.key});

  @override
  State<PartnershipRequestHot> createState() => _PartnershipRequestHotState();
}

class _PartnershipRequestHotState extends State<PartnershipRequestHot> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.331,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xfff5f5f5),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: screenWidth * 0.041, right: screenWidth * 0.041),
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.022),
            _CustomContainerHot(
                screenHeight: screenHeight, screenWidth: screenWidth),
            const Spacer(),
            _CustomContainerHot(
                screenHeight: screenHeight, screenWidth: screenWidth),
            SizedBox(height: screenHeight * 0.022),
          ],
        ),
      ),
    );
  }
}

class _CustomContainerHot extends StatefulWidget {
  final double screenHeight;
  final double screenWidth;

  const _CustomContainerHot({
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  State<_CustomContainerHot> createState() => _CustomContainerHotState();
}

class _CustomContainerHotState extends State<_CustomContainerHot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.screenHeight * 0.136,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xffdbdbdb),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 10, top: 10, bottom: 7.5),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: const Text(
                      'HOT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const Text(
                '잎사이 치킨집',
                style: TextStyle(
                  color: Color(0xff111111),
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  '1시간 전',
                  style: TextStyle(
                    color: Color(0xffc1c1c1),
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              height: 1,
              color: Color(0xffdbdbdb),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Text(
              '잎사이 치킨집 제발 등록해주시면 안될까요...? 여기 너무 맛있고 맨날 시켜먹는데 할인쿠폰까지 있으면 진짜 너무 좋을 것 같아서 남겨봅...',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color(0xff393939),
                fontSize: 12,
                fontFamily: 'Pretendard',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 8),
            child: Row(
              children: [
                Icon(
                  Icons.thumb_up_off_alt_outlined,
                  size: 20,
                  color: Color(0xff6fbf8a),
                ),
                SizedBox(width: 5),
                Text(
                  '134',
                  style: TextStyle(
                    color: Color(0xff8e8e8e),
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                  ),
                ),
                SizedBox(width: 24),
                Icon(
                  CupertinoIcons.chat_bubble,
                  size: 20,
                  color: Color(0xffc1c1c1),
                ),
                SizedBox(width: 5),
                Text(
                  '12',
                  style: TextStyle(
                    color: Color(0xff8e8e8e),
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
