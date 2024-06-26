import 'package:flutter/material.dart';

class SearchLogicTrending extends StatefulWidget {
  const SearchLogicTrending({super.key});

  @override
  State<SearchLogicTrending> createState() => _SearchLogicTrendingState();
}

class _SearchLogicTrendingState extends State<SearchLogicTrending> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17, right: 10),
      child: Column(
        children: List.generate(
          10,
          (index) {
            return Padding(
              padding: const EdgeInsets.only(top: 13),
              child: Row(
                children: [
                  SizedBox(
                    width: 16,
                    child: Text(
                      '${index + 1}',
                      style: const TextStyle(
                        color: Color(0xff393939),
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '곱창',
                    style: TextStyle(
                      color: Color(0xff393939),
                      fontFamily: 'Pretendard',
                    ),
                  ),
                  Spacer(),
                  /*
                  Icon(
                    Icons.arrow_drop_down_rounded,
                  ),
                  Icon(
                    Icons.arrow_drop_up_rounded,
                  )*/
                  Container(
                    width: 10,
                    height: 2,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
