import 'package:flutter/material.dart';

class SearchLogicKeywords extends StatefulWidget {
  const SearchLogicKeywords({super.key});

  @override
  State<SearchLogicKeywords> createState() => _SearchLogicKeywordsState();
}

class _SearchLogicKeywordsState extends State<SearchLogicKeywords> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Wrap(
              spacing: 10,
              runSpacing: 4,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                  ),
                  child: const Row(
                    children: [
                      Text(
                        '마리노피자',
                        style: TextStyle(
                          color: Color(0xff393939),
                          fontFamily: 'Pretendard',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Wrap(
              spacing: 10,
              runSpacing: 4,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                  ),
                  child: const Row(
                    children: [
                      Text(
                        '마리노피자',
                        style: TextStyle(
                          color: Color(0xff393939),
                          fontFamily: 'Pretendard',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Wrap(
              spacing: 10,
              runSpacing: 4,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                  ),
                  child: const Row(
                    children: [
                      Text(
                        '마리노피자',
                        style: TextStyle(
                          color: Color(0xff393939),
                          fontFamily: 'Pretendard',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Wrap(
              spacing: 10,
              runSpacing: 4,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                  ),
                  child: const Row(
                    children: [
                      Text(
                        '마리노피자',
                        style: TextStyle(
                          color: Color(0xff393939),
                          fontFamily: 'Pretendard',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
