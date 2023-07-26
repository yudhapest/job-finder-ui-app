import 'package:flutter/material.dart';
import 'package:job_finder_app/common/style.dart';

class CustomButtonWidget extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;
  const CustomButtonWidget({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 42.0,
          height: 42.0,
          decoration: BoxDecoration(
            color: ColorManager.lightGreyColor,
            borderRadius: BorderRadius.circular(AppSize.s10),
          ),
          child: Image.asset(
            '${AssetImageIconManager.assetPath}/$icon',
            width: AppSize.s18,
            scale: 3.5,
          )),
    );
  }
}
