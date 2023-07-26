import 'package:flutter/material.dart';
import 'package:job_finder_app/common/style.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p24, vertical: AppMargin.m24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello Park Eun-bin!',
            style: getDarkTextStyle(
                fontSize: AppSize.s22, fontWeight: FontWeightManager.regular),
          ),
          const SizedBox(
            height: AppSize.s4,
          ),
          Text(
            'Find Your Dream Job',
            style: getDarkTextStyle(
                fontSize: AppSize.s26, fontWeight: FontWeightManager.semiBold),
          ),
        ],
      ),
    );
  }
}
