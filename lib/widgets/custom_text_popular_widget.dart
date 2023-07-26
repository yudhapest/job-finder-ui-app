import 'package:flutter/material.dart';
import 'package:job_finder_app/common/style.dart';

class CustomTextWidget extends StatelessWidget {
  final String title;
  const CustomTextWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p24, vertical: AppPadding.p18),
      child: Text(
        title,
        style: getDarkTextStyle(
            fontSize: AppSize.s18, fontWeight: FontWeightManager.semiBold),
      ),
    );
  }
}
