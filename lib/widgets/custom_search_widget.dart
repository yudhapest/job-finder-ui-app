import 'package:flutter/material.dart';
import 'package:job_finder_app/common/style.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p14),
              height: 50.0,
              decoration: BoxDecoration(
                  color: ColorManager.primaryColor,
                  borderRadius: BorderRadius.circular(AppSize.s16)),
              child: Row(
                children: [
                  Image.asset(
                    '${AssetImageIconManager.assetPath}/Search.png',
                    scale: 4.5,
                  ),
                  const SizedBox(
                    width: AppSize.s14,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: getDarkTextStyle(
                          fontSize: AppSize.s16,
                          fontWeight: FontWeightManager.light),
                      decoration: InputDecoration.collapsed(
                        hintText: 'Search your dream job',
                        hintStyle: getDarkTextStyle(
                          fontSize: AppSize.s16,
                          fontWeight: FontWeightManager.light,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: AppSize.s14,
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                color: ColorManager.blueColor,
                borderRadius: BorderRadius.circular(AppSize.s16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p8),
                child: Image.asset(
                  '${AssetImageIconManager.assetPath}/Filter.png',
                  scale: 3.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
