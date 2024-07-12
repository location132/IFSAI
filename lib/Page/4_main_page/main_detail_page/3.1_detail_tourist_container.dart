import 'package:flutter/material.dart';

class BuildAttractionCard extends StatefulWidget {
  final Map<String, dynamic> serverResultData;

  const BuildAttractionCard({
    super.key,
    required this.serverResultData,
  });

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
          width: double.infinity,
          height: screenHeight * 0.141,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Stack(
              children: [
                Image.network(widget.serverResultData['market0'].toString()),
                Positioned(
                  child: Container(
                    width: double.infinity,
                    height: screenHeight * 0.141,
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
                      Row(
                        children: [
                          Text(
                            '#${widget.serverResultData['market1'][0]}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),

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
