import 'package:flutter/material.dart';
import 'package:job_finder_app/common/style.dart';
import 'package:job_finder_app/widgets/custom_card_recommendation_widget.dart';

class GridCardRecommendationWidget extends StatelessWidget {
  const GridCardRecommendationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 6 / 5,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      physics: const BouncingScrollPhysics(),
      crossAxisCount: 2,
      children: const [
        CustomCardRecommendationWidget(
            image: '${AssetImageIconManager.assetPath}/youtube.png',
            job: 'Sr. Manager',
            onsite: 'Onsite',
            company: 'Youtube',
            location: 'Jakarta, Indonesia'),
        CustomCardRecommendationWidget(
            image: '${AssetImageIconManager.assetPath}/shopee.jpg',
            job: 'Sr. Content Writer',
            onsite: 'Onsite',
            company: 'Shopee',
            location: 'Singapore, Singapore'),
        CustomCardRecommendationWidget(
            image: '${AssetImageIconManager.assetPath}/gojek.jpg',
            job: 'Jr. Content Creator',
            onsite: 'Onsite',
            company: 'Gojek',
            location: 'Jakarta, Indonesia'),
        CustomCardRecommendationWidget(
            image: '${AssetImageIconManager.assetPath}/bukalapak.png',
            job: 'Jr. UI/UX Designer',
            onsite: 'Onsite',
            company: 'Bukalapak',
            location: 'Bandung, Indonesia'),
        CustomCardRecommendationWidget(
            image: '${AssetImageIconManager.assetPath}/EFishery.jpeg',
            job: 'Senior Engineer',
            onsite: 'Onsite',
            company: 'EFishery',
            location: 'Bandung, Indonesia'),
        CustomCardRecommendationWidget(
            image: '${AssetImageIconManager.assetPath}/traveloka.png',
            job: 'Jr. IT Support',
            onsite: 'Onsite',
            company: 'Traveloka',
            location: 'Jakarta, Indonesia'),
      ],
    );
  }
}
