import 'package:flutter/material.dart';
import 'package:job_finder_app/widgets/custom_text_widget.dart';
import 'package:job_finder_app/widgets/hero_widget.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [HeroWidget(), CustomTextWidget()],
    );
  }
}
