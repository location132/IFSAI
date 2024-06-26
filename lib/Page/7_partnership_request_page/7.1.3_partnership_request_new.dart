import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartnershipRequestNew extends StatefulWidget {
  const PartnershipRequestNew({super.key});

  @override
  State<PartnershipRequestNew> createState() => _PartnershipRequestNewState();
}

class _PartnershipRequestNewState extends State<PartnershipRequestNew> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
          left: screenWidth * 0.041, right: screenWidth * 0.041),
      child: Column(
        children: [
          _CustomContainerNew(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
          ),
          _CustomContainerNew(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
          ),
        ],
      ),
    );
  }
}

class _CustomContainerNew extends StatefulWidget {
  final double screenHeight;
  final double screenWidth;

  const _CustomContainerNew({
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  State<_CustomContainerNew> createState() => _CustomContainerNewState();
}

class _CustomContainerNewState extends State<_CustomContainerNew> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Container(
          height: widget.screenHeight * 0.136,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: const Color(0xffdbdbdb),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 10, top: 10, bottom: 7.5),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'NEW',
                        style: TextStyle(
                          color: Color(0xfff64f4f),
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '잎사이 치킨집',
                    style: TextStyle(
                      color: Color(0xff111111),
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Padding(
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
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Divider(
                  height: 1,
                  color: Color(0xffdbdbdb),
                ),
              ),
              Padding(
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
              Padding(
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
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
