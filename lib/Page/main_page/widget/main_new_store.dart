import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_dream/Page/4_main_page/page/main_cubit.dart';
import 'package:my_dream/Page/4_main_page/page/main_state.dart';
import 'package:my_dream/Page/4_main_page/components/main_title_overview.dart';
import 'package:my_dream/model/market.dart';

class MainNewStore extends StatefulWidget {
  final Function(bool) onLoadingComplete;

  const MainNewStore({
    super.key,
    required this.onLoadingComplete,
  });

  @override
  State<MainNewStore> createState() => _MainNewStoreState();
}

class _MainNewStoreState extends State<MainNewStore> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MainCubit>().newStoreGetDio(() {
        widget.onLoadingComplete(true);
      });
    });
  }

  Widget buildStoreItem(MarketModel store, double height) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.01),
      child: Container(
        width: screenWidth * 0.351,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadows: const [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 4,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: height * 0.56,
                    width: double.infinity,
                    child: CachedNetworkImage(
                      imageUrl: store.marketImage,
                      fit: BoxFit.cover,
                      memCacheHeight: ((height * 0.56) *
                              MediaQuery.of(context).devicePixelRatio)
                          .round(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          store.marketName,
                          style: const TextStyle(
                            color: Color(0xff111111),
                            fontSize: 15.5,
                            fontFamily: 'PretendardSemiBold',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            store.marketDescription,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Color(0xff8e8e8e),
                              fontSize: 12,
                              fontFamily: 'Pretendard',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      height: 1,
                      color: Color(0xfff5f5f5),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            store.eventMessage == null ||
                                    store.eventMessage!.isEmpty
                                ? '이번에 새로 입점한\n스토어에요!'
                                : store.eventMessage!,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              height: 1.3,
                              color: store.eventMessage == null ||
                                      store.eventMessage!.isEmpty
                                  ? Colors.grey
                                  : Colors.red,
                              fontSize: 12,
                              fontFamily: 'PretendardBold',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                ],
              ),
              Positioned(
                top: 12,
                child: Container(
                  height: 18,
                  decoration: const BoxDecoration(
                    color: Color(0xff6fbf8a),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 6, right: 5),
                    child: Center(
                      child: Text(
                        'NEW',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return state.newStoreDisplayedStores.isEmpty
            ? const SizedBox.shrink()
            : Column(
                children: [
                  MainTitleOverview(
                    title: '신규 스토어',
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/DetailNewStore',
                        arguments: state.newStoreSeverResult,
                      );
                    },
                  ),
                  SizedBox(height: screenHeight * 0.004),
                  SizedBox(
                    height: screenHeight * 0.211,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.newStoreDisplayedStores.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              left: index == 0 ? screenWidth * 0.031 : 0,
                              right: index ==
                                      state.newStoreDisplayedStores.length - 1
                                  ? screenWidth * 0.031
                                  : 0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                '/StoreDetail',
                                arguments: {
                                  'marketId': state
                                      .newStoreDisplayedStores[index].marketId,
                                  'isFavorite': false,
                                },
                              );
                            },
                            child: buildStoreItem(
                                state.newStoreDisplayedStores[index],
                                screenHeight * 0.21),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
      },
    );
  }
}
