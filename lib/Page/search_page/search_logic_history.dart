import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_dream/Page/5_search_page/page/search_cubit.dart';
import 'package:my_dream/Page/5_search_page/page/search_state.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:provider/provider.dart';

class SearchLogicHistory extends StatefulWidget {
  const SearchLogicHistory({super.key});

  @override
  State<SearchLogicHistory> createState() => _SearchLogicHistoryState();
}

class _SearchLogicHistoryState extends State<SearchLogicHistory> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<SearchCubit>().setIsFirstSearchBar(false);
  }

  // 검색기록 클릭 핸들러
  void _handleSearchItemTap(String content) async {
    final searchControllerModel =
        Provider.of<SearchBarModel>(context, listen: false);
    searchControllerModel.setSearchController(content);
    searchControllerModel.setSearchScreenStaus(false);
    searchControllerModel.setFirstTabStatus(true);
    await Future.delayed(const Duration(milliseconds: 120));
    searchControllerModel.setSearchResultsScreen(true);
  }

  @override
  Widget build(BuildContext context) {
    final loginStatus = Provider.of<LoginModel>(context, listen: false);
    final screenWidth = MediaQuery.of(context).size.width;

    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        final searchCubit = context.read<SearchCubit>();

        // 전체 삭제 처리
        if (state.isRemoveSearchHistory && state.isRemoveState) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            searchCubit.removeAllHistory(isLoggedIn: loginStatus.loginStatus);
          });
        }

        return Column(
          children: [
            AnimatedOpacity(
              opacity: state.historyOpacity,
              duration: const Duration(milliseconds: 300),
              child: state.searchHistory.isEmpty
                  ? SizedBox(
                      height: 57,
                      child: Row(
                        children: [
                          SizedBox(width: screenWidth * 0.072),
                          const Text(
                            '최근 검색어가 없습니다.',
                            style: TextStyle(
                              color: Color(0xff8e8e8e),
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                            ),
                          ),
                        ],
                      ),
                    )
                  : Column(
                      children: [
                        // 검색 기록 리스트
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.showAll
                              ? (state.searchHistory2.isNotEmpty
                                  ? state.searchHistory2.length
                                  : state.searchHistory.length)
                              : (state.searchHistory.length > 3
                                  ? 3
                                  : state.searchHistory.length),
                          itemBuilder: (context, index) {
                            final displayList = state.showAll
                                ? (state.searchHistory2.isNotEmpty
                                    ? state.searchHistory2
                                    : state.searchHistory)
                                : state.searchHistory;

                            if (index >= displayList.length)
                              return const SizedBox();

                            final item = displayList[index];

                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Row(
                                children: [
                                  SizedBox(width: screenWidth * 0.072),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () =>
                                          _handleSearchItemTap(item.content),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        child: Text(
                                          item.content,
                                          style: const TextStyle(
                                            color: Color(0xff393939),
                                            fontSize: 14,
                                            fontFamily: 'Pretendard',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      final searchItem = loginStatus.loginStatus
                                          ? item.historyId
                                          : item.content;
                                      searchCubit.removeHistory(searchItem,
                                          isLoggedIn: loginStatus.loginStatus);
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Icon(
                                        Icons.close,
                                        size: 16,
                                        color: Color(0xff8e8e8e),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.041),
                                ],
                              ),
                            );
                          },
                        ),

                        // 더보기/접기 버튼
                        if (state.hasThreeOrMoreRecentSearches)
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: InkWell(
                              onTap: () {
                                searchCubit.handleSeeMoreHistory(
                                    isLoggedIn: loginStatus.loginStatus);
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      state.showAll ? '접기' : '더보기',
                                      style: const TextStyle(
                                        color: Color(0xff8e8e8e),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    Icon(
                                      state.showAll
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,
                                      size: 16,
                                      color: const Color(0xff8e8e8e),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
            ),
          ],
        );
      },
    );
  }
}
