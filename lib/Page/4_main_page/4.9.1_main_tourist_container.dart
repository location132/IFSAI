import 'package:flutter/material.dart';

class BuildAttractionCard extends StatefulWidget {
  final Map<String, dynamic> serverResultData;
  final VoidCallback onLoadingComplete;

  const BuildAttractionCard({
    super.key,
    required this.serverResultData,
    required this.onLoadingComplete,
  });

  @override
  State<BuildAttractionCard> createState() => _BuildAttractionCardState();
}

class _BuildAttractionCardState extends State<BuildAttractionCard> {
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  void _loadImage() {
    if (widget.serverResultData['market0'] != null) {
      Image.network(widget.serverResultData['market0'].toString())
          .image
          .resolve(const ImageConfiguration())
          .addListener(
        ImageStreamListener((_, __) {
          if (mounted) {
            setState(() {
              _isLoaded = true;
            });
            widget.onLoadingComplete();
          }
        }),
      );
    } else {
      setState(() {
        _isLoaded = true;
      });
      widget.onLoadingComplete();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return _isLoaded
        ? Stack(
            children: [
              SizedBox(
                height: screenHeight * 0.282,
                width: screenWidth * 0.44,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(
                    children: [
                      Image.network(
                          widget.serverResultData['market0'].toString()),
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
                                Text(
                                  ' #${widget.serverResultData['market1'][1]}',
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
                            Text(
                              widget.serverResultData['market2'],
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
          )
        : const SizedBox();
  }
}
