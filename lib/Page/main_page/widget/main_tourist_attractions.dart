import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_dream/Page/4_main_page/page/main_cubit.dart';
import 'package:my_dream/Page/4_main_page/page/main_state.dart';
import 'package:my_dream/Page/4_main_page/widget/4.9.1_main_tourist_container.dart';
import 'package:my_dream/Page/4_main_page/components/main_title_overview.dart';

class MainTouristAttractions extends StatefulWidget {
  final Function(bool) onLoadingComplete;

  const MainTouristAttractions({super.key, required this.onLoadingComplete});

  @override
  State<MainTouristAttractions> createState() => _MainTouristAttractionsState();
}

class _MainTouristAttractionsState extends State<MainTouristAttractions> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MainCubit>().attractionsGetDio(() {
        widget.onLoadingComplete(true);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return state.touristIsFinish
            ? Column(
                children: [
                  MainTitleOverview(
                    title: '건대생을 위한 추천 관광명소',
                    onTap: () {
                      Navigator.pushNamed(context, '/DetailCategoryAttraction');
                    },
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.041),
                    child: Row(
                      children: [
                        BuildAttractionCard(
                          serverResultData: state.touristServerResult[0],
                        ),
                        const SizedBox(width: 14), // 간격 추가
                        BuildAttractionCard(
                          serverResultData: state.touristServerResult[1],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.041),
                    child: Row(
                      children: [
                        BuildAttractionCard(
                          serverResultData: state.touristServerResult[2],
                        ),
                        const SizedBox(width: 14), // 간격 추가
                        BuildAttractionCard(
                          serverResultData: state.touristServerResult[3],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : const SizedBox();
      },
    );
  }
}
