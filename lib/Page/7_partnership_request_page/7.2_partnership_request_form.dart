import 'package:flutter/material.dart';
import 'package:my_dream/coreService/widget/custom_appbar.dart';
import 'package:provider/provider.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

class PartnershipRequestForm extends StatefulWidget {
  const PartnershipRequestForm({super.key});

  @override
  State<PartnershipRequestForm> createState() => _PartnershipRequestFormState();
}

class _PartnershipRequestFormState extends State<PartnershipRequestForm> {
  late PartnershipRequestModel _partnershipRequestModel;
  final TextEditingController _textEditingController = TextEditingController();
  KakaoMapController? mapController;
  Set<Marker> markers = {}; // 마커 변수

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _partnershipRequestModel = Provider.of<PartnershipRequestModel>(context);
    _partnershipRequestModel.addListener(_updateState);
  }

  @override
  void dispose() {
    _partnershipRequestModel.removeListener(_updateState);
    super.dispose();
  }

  void _updateState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final secondScreenHeight = screenHeight * 0.716;
    final secondScreenWidth = screenWidth - screenWidth * 0.041 * 2;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.041, right: screenWidth * 0.041),
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.064,
                  child: const CustomAppBar(title: '파트너쉽 요청 글쓰기'),
                ),
                SizedBox(height: screenHeight * 0.012),
                SizedBox(
                  height: screenHeight * 0.716,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xffdbdbdb),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x0c000000),
                          offset: Offset(2, 0),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x0c000000),
                          offset: Offset(-2, 0),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: secondScreenHeight * 0.028,
                              left: secondScreenWidth * 0.042),
                          child: Row(
                            children: [
                              const Text(
                                '제목 : ',
                                style: TextStyle(
                                  color: Color(0xff8e8e8e),
                                  fontSize: 16,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: SizedBox(
                                  height: 21,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: '제목을 입력해주세요.',
                                      hintStyle: TextStyle(
                                        color: Color(0xffc1c1c1),
                                        fontSize: 16,
                                        fontFamily: 'Pretendard',
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    style: const TextStyle(
                                      color: Color(0xff8e8e8e),
                                      fontSize: 16,
                                      fontFamily: 'Pretendard',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        _partnershipRequestModel.selectedLatitude != null &&
                                _partnershipRequestModel.selectedLongitude !=
                                    null
                            ? Padding(
                                padding:
                                    const EdgeInsets.only(left: 3, right: 3),
                                child: SizedBox(
                                  height: secondScreenHeight * 0.246,
                                  child: KakaoMap(
                                    currentLevel: 1,
                                    center: LatLng(
                                      _partnershipRequestModel
                                          .selectedLatitude!,
                                      _partnershipRequestModel
                                          .selectedLongitude!,
                                    ),
                                    onMapCreated: (controller) {
                                      mapController = controller;
                                      setState(() {
                                        markers.clear();
                                        markers.add(Marker(
                                          markerId: UniqueKey().toString(),
                                          latLng: LatLng(
                                            _partnershipRequestModel
                                                .selectedLatitude!,
                                            _partnershipRequestModel
                                                .selectedLongitude!,
                                          ),
                                        ));
                                      });
                                    },
                                    markers: markers.toList(),
                                  ),
                                ),
                              )
                            : Center(
                                child: Container(
                                  height: secondScreenHeight * 0.246,
                                  width: double.infinity,
                                  color: const Color(0xffc1c1c1),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.camera_alt_rounded,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                      SizedBox(height: 3),
                                      Text(
                                        '이미지 불러오기',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'PretendardSemiBold',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                        Column(
                          children: [
                            SizedBox(height: secondScreenHeight * 0.025),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: secondScreenWidth * 0.042,
                                  right: secondScreenWidth * 0.042),
                              child: Column(
                                children: [
                                  NewWidget(
                                    screenWidth: screenWidth,
                                    title: '업체명',
                                    initialValue: _partnershipRequestModel
                                            .selectedBusinessName ??
                                        '',
                                  ),
                                  SizedBox(height: secondScreenHeight * 0.011),
                                  NewWidget(
                                    screenWidth: screenWidth,
                                    title: '업체위치',
                                    initialValue: _partnershipRequestModel
                                            .selectedBusinessAddress ??
                                        '',
                                  ),
                                  SizedBox(height: secondScreenHeight * 0.011),
                                  NewWidget(
                                    screenWidth: screenWidth,
                                    title: '상세주소',
                                    initialValue: _partnershipRequestModel
                                            .selectedBusinessDetailAddress ??
                                        '',
                                  ),
                                  SizedBox(height: secondScreenHeight * 0.011),
                                  NewWidget(
                                    screenWidth: screenWidth,
                                    title: '전화번호',
                                    initialValue: _partnershipRequestModel
                                            .selectedBusinessPhone ??
                                        '',
                                  ),
                                  SizedBox(height: secondScreenHeight * 0.033),
                                  Container(
                                    height: secondScreenHeight * 0.262,
                                    decoration: BoxDecoration(
                                      color: const Color(0xfff5f5f5),
                                      border: Border.all(
                                        color: const Color(0xffdbdbdb),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 10, bottom: 20),
                                          child: TextFormField(
                                            controller: _textEditingController,
                                            maxLines: null,
                                            maxLength: 1000,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              hintText:
                                                  '내용글을 작성해주세요. (500자 이내)',
                                              hintStyle: TextStyle(
                                                color: Color(0xff8e8e8e),
                                                fontFamily: 'Pretendard',
                                              ),
                                              counterText: '',
                                            ),
                                            onChanged: (text) {
                                              setState(() {});
                                            },
                                          ),
                                        ),
                                        Positioned(
                                          right: 10,
                                          bottom: 5,
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                      '${_textEditingController.text.length}',
                                                  style: const TextStyle(
                                                    color: Color(0xff5b5b5b),
                                                    fontSize: 14,
                                                    fontFamily: 'Pretendard',
                                                  ),
                                                ),
                                                const TextSpan(
                                                  text: ' / 1,000',
                                                  style: TextStyle(
                                                    color: Color(0xff8e8e8e),
                                                    fontSize: 14,
                                                    fontFamily: 'Pretendard',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: secondScreenHeight * 0.025),
                                  InkWell(
                                    onTap: () async {
                                      await Navigator.pushNamed(
                                          context, '/PartnershipSearch');
                                      setState(() {}); // 네비게이션 후 상태 업데이트
                                    },
                                    child: Container(
                                      height: secondScreenHeight * 0.074,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: const Color(0xff6fbf8a),
                                          width: 1.5,
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          '업체정보 한번에 불러오기',
                                          style: TextStyle(
                                            color: Color(0xff6fbf8a),
                                            fontSize: 16,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.027),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff8e8e8e),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      '등록하기',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatefulWidget {
  final String title;
  final String initialValue;
  const NewWidget({
    super.key,
    required this.screenWidth,
    required this.title,
    required this.initialValue,
  });

  final double screenWidth;

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void didUpdateWidget(NewWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      _controller.text = widget.initialValue;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${widget.title} :',
          style: const TextStyle(
            color: Color(0xff8e8e8e),
            fontFamily: 'Pretendard',
          ),
        ),
        const Spacer(),
        SizedBox(
          width: widget.screenWidth * 0.675,
          height: 30,
          child: TextFormField(
            controller: _controller,
            decoration: InputDecoration(
              fillColor: Colors.transparent,
              filled: true,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: const BorderSide(
                  color: Color(0xffdbdbdb),
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: const BorderSide(
                  color: Color(0xffdbdbdb),
                  width: 1,
                ),
              ),
            ),
            style: const TextStyle(
              fontSize: 14,
              fontFamily: 'Pretendard',
            ),
          ),
        ),
      ],
    );
  }
}
