import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MainAddBannerScreen extends StatefulWidget {
  const MainAddBannerScreen({super.key});

  @override
  State<MainAddBannerScreen> createState() => _MainAddBannerScreenState();
}

class _MainAddBannerScreenState extends State<MainAddBannerScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(
          height: screenWidth * 0.357,
          width: double.infinity,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xffdbdbdb),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                '${dotenv.env['API_URL']}/images/banner.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    );
  }
}
