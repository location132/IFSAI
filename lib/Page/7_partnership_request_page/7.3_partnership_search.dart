import 'package:flutter/material.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:my_dream/coreService/kakao_api_service.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:my_dream/coreService/widget/custom_appbar.dart';
import 'package:my_dream/coreService/widget/searchbar.dart';
import 'package:provider/provider.dart';

class PartnershipSearch extends StatefulWidget {
  const PartnershipSearch({super.key});

  @override
  State<PartnershipSearch> createState() => _PartnershipSearchState();
}

class _PartnershipSearchState extends State<PartnershipSearch> {
  final KakaoApiService apiService = KakaoApiService();
  KakaoMapController? mapController;

  List<dynamic> _results = [];
  List<dynamic> saveResults = [];
  String saveText = '';
  bool _isChangeScreen = false;

  double? _selectedLatitude;
  double? _selectedLongitude;
  String? _selectedPlaceName;
  String? _selsctdeAddress;
  String? _selectedPhone;
  Set<Marker> markers = {}; // 마커 변수

  void _search(String value) async {
    setState(() {
      _isChangeScreen = false;
      _results = [];
      markers = {};
    });

    if (value.isNotEmpty) {
      final saveResults = await apiService.searchBusinesses(value);
      setState(() {
        _results = saveResults;
        saveText = value;
      });
      print(_results);
    } else {
      setState(() {
        _results = [];
      });
    }
  }

  void _updateMap() {
    if (mapController != null &&
        _selectedLatitude != null &&
        _selectedLongitude != null) {
      mapController!.setCenter(LatLng(_selectedLatitude!, _selectedLongitude!));
      markers.clear();
      markers.add(
        Marker(
          markerId: UniqueKey().toString(),
          latLng: LatLng(_selectedLatitude!, _selectedLongitude!),
        ),
      );
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final partnershipRequestModel =
        Provider.of<PartnershipRequestModel>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.041,
                    right: screenWidth * 0.041,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight * 0.064,
                        child: const CustomAppBar(title: '업체 검색'),
                      ),
                      Searchbar(
                        textEditing: '업체명을 입력해주세요.',
                        onChanged: (value) {
                          _search(value);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.012),
                Expanded(
                  child: Stack(
                    children: [
                      AnimatedOpacity(
                        opacity: _results.isNotEmpty ? 0.0 : 1.0,
                        duration: const Duration(milliseconds: 420),
                        child: Column(
                          children: [
                            SizedBox(height: screenHeight * 0.072),
                            const Center(
                              child: Text(
                                '원하시는 업체를 찾아보세요.\n예) 잎사이 건대점',
                                style: TextStyle(
                                  color: Color(0xffc1c1c1),
                                  fontFamily: 'Pretendard',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: screenWidth * 0.041,
                          right: screenWidth * 0.041,
                        ),
                        child: AnimatedOpacity(
                          opacity: _results.isEmpty ? 0.0 : 1.0,
                          duration: const Duration(milliseconds: 420),
                          child: ListView.builder(
                            itemCount: _results.length,
                            itemBuilder: (context, index) {
                              final item = _results[index];
                              return Column(
                                children: [
                                  ListTile(
                                    title: Text(item['place_name']),
                                    subtitle: Text(item['road_address_name'] ??
                                        item['address_name']),
                                    onTap: () {
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                      setState(() {
                                        _isChangeScreen = true;
                                        _selectedLatitude =
                                            double.parse(item['y']);
                                        _selectedLongitude =
                                            double.parse(item['x']);
                                        _selectedPlaceName = item['place_name'];
                                        _selsctdeAddress =
                                            item['road_address_name'];
                                        _selectedPhone = item['phone'];
                                      });
                                      _updateMap(); // 새로운 위치로 지도 업데이트
                                    },
                                  ),
                                  const Divider(
                                    height: 1,
                                    color: Color(0xfff5f5f5),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                      //------------------------------------
                      if (_selectedLatitude != null &&
                          _selectedLongitude != null)
                        IgnorePointer(
                          ignoring: !_isChangeScreen,
                          child: AnimatedOpacity(
                            opacity: _isChangeScreen ? 1.0 : 0.0,
                            duration: const Duration(milliseconds: 420),
                            child: Stack(
                              children: [
                                KakaoMap(
                                  currentLevel: 1, // 형식정의로 이동하면 나오는거 확인
                                  center: LatLng(
                                      _selectedLatitude!, _selectedLongitude!),
                                  onMapCreated: (controller) {
                                    mapController = controller;
                                    _updateMap(); // 지도 생성 시 초기 위치 설정
                                  },
                                  markers: markers.toList(),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: screenHeight * 0.171,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFFDFDFD),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x0c000000),
                                          offset: Offset(0, -2),
                                          blurRadius: 8,
                                        ),
                                      ],
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(14),
                                        topLeft: Radius.circular(14),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                            height:
                                                screenHeight * 0.171 * 0.137),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: screenWidth * 0.066),
                                          child: Row(
                                            children: [
                                              Text(
                                                '$_selectedPlaceName',
                                                style: const TextStyle(
                                                  color: Color(0xff393939),
                                                  fontSize: 16,
                                                  fontFamily: 'Pretendard',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: screenWidth * 0.066),
                                          child: Row(
                                            children: [
                                              Text(
                                                '$_selsctdeAddress',
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  color: Color(0xff5b5b5b),
                                                  fontFamily: 'Pretendard',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        InkWell(
                                          onTap: () {
                                            partnershipRequestModel
                                                .setSelectedBusiness(
                                                    _selectedPlaceName ?? '',
                                                    _selsctdeAddress ?? '',
                                                    '',
                                                    _selectedPhone ?? '',
                                                    _selectedLatitude ?? 0,
                                                    _selectedLongitude ?? 0);
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            height: 50,
                                            margin: const EdgeInsets.only(
                                              left: 16,
                                              right: 16,
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xff6fbf8a),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                '선택',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontFamily: 'Pretendard',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
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
    );
  }
}
