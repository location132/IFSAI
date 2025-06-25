import 'package:flutter/material.dart';
import 'package:my_dream/model/main_screen.dart';

class BuildAttractionCard extends StatefulWidget {
  final TourismModel serverResultData;

  const BuildAttractionCard({super.key, required this.serverResultData});

  @override
  State<BuildAttractionCard> createState() => _BuildAttractionCardState();
}

class _BuildAttractionCardState extends State<BuildAttractionCard> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        SizedBox(
          height: screenHeight * 0.282,
          width: screenWidth * 0.44,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Stack(
              children: [
                Image.network(widget.serverResultData.imageUrl),
                Positioned(
                  child: Container(
                    height: screenHeight * 0.282,
                    width: screenWidth * 0.44,
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.85555555),
                          Colors.black.withOpacity(0.005)
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.serverResultData.tags,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        widget.serverResultData.introduce,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
