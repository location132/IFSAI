import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_dream/Page/5_search_page/page/search_cubit.dart';
import 'package:my_dream/Page/5_search_page/page/search_state.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:provider/provider.dart';

class SearchLogicKeywords extends StatefulWidget {
  const SearchLogicKeywords({super.key});

  @override
  State<SearchLogicKeywords> createState() => _SearchLogicKeywordsState();
}

class _SearchLogicKeywordsState extends State<SearchLogicKeywords> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<SearchCubit>().setIsFirstSearchBar(false);
  }

  @override
  void initState() {
    super.initState();

    // 관련 검색어 로드
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SearchCubit>().loadRelatedSearches();
    });
  }

  // 검색기록 클릭 핸들러
  void _handleSearchItemTap(String content) async {
    final searchControllerModel =
        Provider.of<SearchBarModel>(context, listen: false);
    final searchCubit = context.read<SearchCubit>();

    // 관련 검색어 초기화
    searchCubit.clearRelatedSearches();

    searchControllerModel.setSearchController(content);
    searchControllerModel.setSearchScreenStaus(false);
    searchControllerModel.setFirstTabStatus(true);
    await Future.delayed(const Duration(milliseconds: 120));
    searchControllerModel.setSearchResultsScreen(true);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              if (state.relatedSearches.isNotEmpty)
                Wrap(
                  children: state.relatedSearches.map<Widget>((relatedItem) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          child: Wrap(
                            spacing: 10,
                            runSpacing: 4,
                            children: [
                              TextButton(
                                onPressed: () {
                                  _handleSearchItemTap(relatedItem);
                                },
                                style: TextButton.styleFrom(
                                  side: const BorderSide(color: Colors.grey),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      relatedItem,
                                      style: const TextStyle(
                                        color: Color(0xff393939),
                                        fontFamily: 'Pretendard',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                )
              else
                const SizedBox(), // 데이터가 없을 때는 빈 위젯 표시
            ],
          ),
        );
      },
    );
  }
}
