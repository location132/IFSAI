import 'dart:async';
import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget {
  final String textEditing;
  final ValueChanged<String>? onChanged;

  const Searchbar({super.key, required this.textEditing, this.onChanged});

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  final TextEditingController _textEditingController = TextEditingController();
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    _textEditingController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 120), () {
      if (widget.onChanged != null) {
        widget.onChanged!(query);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          hintText: widget.textEditing,
          hintStyle: const TextStyle(
            color: Color(0xffc1c1c1),
            fontFamily: 'Pretendard',
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide.none,
          ),
        ),
        onChanged: _onSearchChanged,
      ),
    );
  }
}
