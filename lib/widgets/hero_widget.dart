import 'package:flutter/material.dart';
import 'package:job_finder_app/common/style.dart';
import 'package:job_finder_app/widgets/custom_button_widget.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p24, vertical: AppPadding.p24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButtonWidget(
            onTap: () {},
            icon: 'Category.png',
          ),
          CustomButtonWidget(
            onTap: () {},
            icon: 'Notification.png',
          )
        ],
      ),
    );
  }
}
