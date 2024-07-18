import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  State<CustomAppBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
            ),
            padding: EdgeInsets.zero,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              widget.title,
              style: const TextStyle(
                color: Color(0xff111111),
                fontSize: 20,
                fontFamily: 'Pretendard',
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0,
          child: SizedBox(
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
        ),
      ],
    );
  }
}
