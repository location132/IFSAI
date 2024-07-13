import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({super.key});

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.011),
      child: SizedBox(
        height: 40,
        child: TextFormField(
          controller: _textEditingController,
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
              color: Color(0xffc1c1c1),
              fontFamily: 'Pretendard',
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide.none,
            ),
          ),
          // onFieldSubmitted: widget.onSearch,
        ),
      ),
    );
  }
}
