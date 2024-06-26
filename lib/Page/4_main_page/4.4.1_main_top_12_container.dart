import 'package:flutter/material.dart';

class Top12 extends StatefulWidget {
  final int number;
  final List<Map<String, dynamic>> serverResultData;
  const Top12(
      {super.key, required this.number, required this.serverResultData});

  @override
  State<Top12> createState() => _Top6State();
}

class _Top6State extends State<Top12> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(left: screenWidth * 0.07, top: 10, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          Row(
            children: [
              SizedBox(
                width: widget.number < 10 ? 13 : 20,
                child: Text(
                  widget.number.toString(),
                  softWrap: false,
                  style: const TextStyle(
                    color: Color(0xff282828),
                    fontSize: 20,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                  width: widget.number < 10
                      ? screenWidth * 0.07
                      : screenWidth * 0.053),
              Container(
                height: screenWidth * 0.204,
                width: screenWidth * 0.204,
                decoration: BoxDecoration(
                  color: const Color(0xffd9d9d9),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    widget.serverResultData[0]['market0'].toString(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.047,
              ),
              SizedBox(
                width: screenWidth * 0.45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.serverResultData[0]['market1'].toString(),
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Color(0xff111111),
                        fontSize: 18,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      widget.serverResultData[0]['market2'].toString(),
                      style: const TextStyle(
                        color: Color(0xff8e8e8e),
                        fontFamily: 'Pretendard',
                      ),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 14,
                          color: Color(0xfff7ce45),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          widget.serverResultData[0]['market3']
                              .toStringAsFixed(1),
                          style: const TextStyle(
                            color: Color(0xff111111),
                            fontFamily: 'Pretendard',
                          ),
                        ),
                        const SizedBox(width: 7),
                        Text(
                          '리뷰(${widget.serverResultData[0]['market4'].toString()})',
                          style: const TextStyle(
                            color: Color(0xff111111),
                            fontFamily: 'Pretendard',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          const Divider(
            height: 1,
            color: Color(0xfff5f5f5),
          ),
          const Spacer(),
          Row(
            children: [
              SizedBox(
                width: widget.number < 10 ? 13 : 20,
                child: Text(
                  (widget.number + 1).toString(),
                  style: const TextStyle(
                    color: Color(0xff282828),
                    fontSize: 20,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                  width: widget.number < 10
                      ? screenWidth * 0.07
                      : screenWidth * 0.053),
              Container(
                height: screenWidth * 0.204,
                width: screenWidth * 0.204,
                decoration: BoxDecoration(
                  color: const Color(0xffd9d9d9),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    widget.serverResultData[1]['market0'].toString(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.047,
              ),
              SizedBox(
                width: screenWidth * 0.45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.serverResultData[1]['market1'].toString(),
                      style: const TextStyle(
                        color: Color(0xff111111),
                        fontSize: 18,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      widget.serverResultData[1]['market2'].toString(),
                      style: const TextStyle(
                        color: Color(0xff8e8e8e),
                        fontFamily: 'Pretendard',
                      ),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 14,
                          color: Color(0xfff7ce45),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          widget.serverResultData[1]['market3']
                              .toStringAsFixed(1),
                          style: const TextStyle(
                            color: Color(0xff111111),
                            fontFamily: 'Pretendard',
                          ),
                        ),
                        const SizedBox(width: 7),
                        Text(
                          '리뷰(${widget.serverResultData[1]['market4'].toString()})',
                          style: const TextStyle(
                            color: Color(0xff111111),
                            fontFamily: 'Pretendard',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          const Divider(
            height: 1,
            color: Color(0xfff5f5f5),
          ),
          const Spacer(),
          Row(
            children: [
              SizedBox(
                width: widget.number < 10 ? 13 : 21,
                child: Text(
                  (widget.number + 2).toString(),
                  style: const TextStyle(
                    color: Color(0xff282828),
                    fontSize: 20,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                  width: widget.number < 10
                      ? screenWidth * 0.07
                      : screenWidth * 0.052),
              Container(
                height: screenWidth * 0.204,
                width: screenWidth * 0.204,
                decoration: BoxDecoration(
                  color: const Color(0xffd9d9d9),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    widget.serverResultData[2]['market0'].toString(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.047,
              ),
              SizedBox(
                width: screenWidth * 0.45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.serverResultData[2]['market1'].toString(),
                      style: const TextStyle(
                        color: Color(0xff111111),
                        fontSize: 18,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      widget.serverResultData[2]['market2'].toString(),
                      style: const TextStyle(
                        color: Color(0xff8e8e8e),
                        fontFamily: 'Pretendard',
                      ),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 14,
                          color: Color(0xfff7ce45),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          widget.serverResultData[2]['market3']
                              .toStringAsFixed(1),
                          style: const TextStyle(
                            color: Color(0xff111111),
                            fontFamily: 'Pretendard',
                          ),
                        ),
                        const SizedBox(width: 7),
                        Text(
                          '리뷰(${widget.serverResultData[2]['market4'].toString()})',
                          style: const TextStyle(
                            color: Color(0xff111111),
                            fontFamily: 'Pretendard',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
