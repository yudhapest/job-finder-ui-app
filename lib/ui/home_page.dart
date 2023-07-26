import 'package:flutter/material.dart';
import 'package:job_finder_app/common/style.dart';
import 'package:job_finder_app/widgets/banner_widget.dart';
import 'package:job_finder_app/widgets/custom_search_widget.dart';
import 'package:job_finder_app/widgets/custom_text_popular_widget.dart';
import 'package:job_finder_app/widgets/grid_card_recommendation_widget.dart';
import 'package:job_finder_app/widgets/list_card_popular_widget.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home_page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorManager.backgroundColor,
      body: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BannerWidget(),
            CustomSearchWidget(),
            CustomTextWidget(
              title: 'Popular Job',
            ),
            ListCardPopularWidget(),
            CustomTextWidget(title: 'Recommendation Job'),
            Expanded(
              child: GridCardRecommendationWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
