import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_dream/Page/4_main_page/page/main_cubit.dart';
import 'package:my_dream/Page/4_main_page/page/main_state.dart';
import 'package:my_dream/Page/4_main_page/widget/4.2_main_adBanner.dart';
import 'package:my_dream/Page/4_main_page/widget/4.3_main_category.dart';
import 'package:my_dream/Page/4_main_page/widget/4.4_main_top12.dart';
import 'package:my_dream/Page/4_main_page/widget/4.5_main_new_store.dart';
import 'package:my_dream/Page/4_main_page/widget/4.6_main_best_review.dart';
import 'package:my_dream/Page/4_main_page/widget/4.7_main_hot_promotion.dart';
import 'package:my_dream/Page/4_main_page/widget/4.9_main_tourist_attractions.dart';
import 'package:my_dream/Page/4_main_page/widget/4.10_main_quest.dart';
import 'package:my_dream/Page/4_main_page/widget/4.11_join_us.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  final Function(bool) onLoadingComplete;

  const MainPage({super.key, required this.onLoadingComplete});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final isLogin = Provider.of<LoginModel>(context, listen: false).loginStatus;

    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return Column(
          children: [
            const MainAddBannerScreen(bannerHeight: 140),
            const SizedBox(height: 20),
            const MainCategory(),
            const SizedBox(height: 20),
            MainTop12(
              onLoadingComplete: (isComplete) {
                context.read<MainCubit>().incrementMainPageFinishCount(
                    context, widget.onLoadingComplete);
              },
            ),
            const SizedBox(height: 20),
            MainNewStore(
              onLoadingComplete: (isComplete) {
                context.read<MainCubit>().incrementMainPageFinishCount(
                    context, widget.onLoadingComplete);
              },
            ),
            const SizedBox(height: 20),
            MainBestReview(
              onLoadingComplete: (isComplete) {
                context.read<MainCubit>().incrementMainPageFinishCount(
                    context, widget.onLoadingComplete);
              },
            ),
            const SizedBox(height: 20),
            const MainHotPromotion(),
            const SizedBox(height: 20),
            MainTouristAttractions(
              onLoadingComplete: (isComplete) {
                context.read<MainCubit>().incrementMainPageFinishCount(
                    context, widget.onLoadingComplete);
              },
            ),
            const SizedBox(height: 20),
            if (isLogin)
              MainQuest(
                onLoadingComplete: (isComplete) {
                  context.read<MainCubit>().incrementMainPageFinishCount(
                      context, widget.onLoadingComplete);
                },
              ),
            const SizedBox(height: 20),
            const JoinUs(),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}
