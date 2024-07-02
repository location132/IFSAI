import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BestReview3 extends StatefulWidget {
  final Map<String, dynamic> reviewsData;
  const BestReview3({super.key, required this.reviewsData});

  @override
  State<BestReview3> createState() => _BestReview3State();
}

class _BestReview3State extends State<BestReview3> {
  String givenTimeStr = '';
  String newText = '';

  @override
  void initState() {
    super.initState();
    editText();
  }

  void editText() {
    setState(() {
      givenTimeStr = widget.reviewsData['market0'];
      newText = formatTimeDifference(givenTimeStr);
    });
  }

  String formatTimeDifference(String timeStr) {
    DateFormat format = DateFormat("yyyy-MM-dd HH:mm:ss");
    DateTime givenTime = format.parse(timeStr);
    DateTime currentTime = DateTime.now();

    Duration difference = currentTime.difference(givenTime);
    int hours = difference.inHours;
    int days = difference.inDays;
    int months = days ~/ 30;
    int years = days ~/ 365;

    if (hours < 24) {
      return hours < 1 ? "지금" : "$hours시간 전";
    } else if (days < 7) {
      return "$days일 전";
    } else if (days < 365) {
      return months < 1 ? "1개월 전" : "$months개월 전";
    } else {
      return years < 1 ? "1년 전" : "$years년 전";
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
          child: SizedBox(
            width: screenWidth * 0.331,
            height: double.infinity,
            child: Image.network(
                fit: BoxFit.fitHeight, widget.reviewsData['market2']),
          ),
        ),
        Expanded(
          // SizedBox 대신 Expanded 사용
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start, // 내용을 왼쪽 정렬
              children: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Color(0xffd9d9d9),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 5),
                    SizedBox(
                      width: screenWidth * 0.3,
                      child: Text(
                        widget.reviewsData['market3'],
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Color(0xff282828),
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Expanded(
                      // 이것은 이미 올바르게 사용되고 있음
                      child: Text(
                        newText,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          color: Color(0xff8e8e8e),
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Divider(
                  height: 1,
                  color: Color(0xfff5f5f5),
                ),
                const SizedBox(height: 5),
                Expanded(
                  child: Text(
                    widget.reviewsData['market1'],
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.thumb_up_off_alt_outlined,
                      size: 20,
                      color: Color(0xff6fbf8a),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      widget.reviewsData['market4'].toString(),
                      style: const TextStyle(
                        color: Color(0xff8e8e8e),
                        fontSize: 12,
                        fontFamily: 'Pretendard',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 7),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
