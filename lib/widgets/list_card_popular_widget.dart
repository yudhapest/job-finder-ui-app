import 'package:flutter/material.dart';
import 'package:job_finder_app/common/style.dart';
import 'package:job_finder_app/widgets/custom_card_popular_widget.dart';

class ListCardPopularWidget extends StatelessWidget {
  const ListCardPopularWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const CustomCardPopularWidget(
            image: '${AssetImageIconManager.assetPath}/google.png',
            selary: r'$50K - $60K',
            job: 'Senior UX/UI Designer',
            location: 'Google LLC . Jakarta, Id',
            category: 'Freelancer',
          ),
          CustomCardPopularWidget(
            image: '${AssetImageIconManager.assetPath}/Meta.png',
            selary: r'$150K - $600K',
            job: 'Senior Enginer',
            location: 'Massachusetts . America, Us',
            color: ColorManager.darkBlueColor,
            category: 'Full Time',
          ),
        ],
      ),
    );
  }
}
