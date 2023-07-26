import 'package:flutter/material.dart';
import 'package:job_finder_app/common/style.dart';

class CustomCardRecommendationWidget extends StatelessWidget {
  final String image;
  final String job;
  final String onsite;
  final String company;
  final String location;
  const CustomCardRecommendationWidget({
    required this.image,
    required this.job,
    required this.onsite,
    required this.company,
    required this.location,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Navigator.pushNamed(context, DetailPage.routeName);
      },
      child: Container(
        padding: const EdgeInsets.all(AppPadding.p16),
        decoration: BoxDecoration(
            color: ColorManager.primaryColor,
            borderRadius: BorderRadius.circular(AppSize.s10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 50.0,
                  width: 50.0,
                  child: Card(
                    elevation: 0,
                    color: ColorManager.backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(AppPadding.p8),
                      child: Image.asset(
                        image,
                        width: 32.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: AppSize.s8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      company,
                      style: getDarkTextStyle(
                          fontSize: AppSize.s16,
                          fontWeight: FontWeightManager.bold),
                    ),
                    Text(
                      'Onsite',
                      style: getGreyTextStyle(
                          fontSize: AppSize.s14,
                          fontWeight: FontWeightManager.regular),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: AppSize.s22,
            ),
            Text(
              job,
              style: getDarkTextStyle(
                  fontSize: AppSize.s14,
                  fontWeight: FontWeightManager.semiBold),
            ),
            const SizedBox(
              height: AppSize.s6,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: ColorManager.greyColor,
                  size: 14,
                ),
                Text(
                  location,
                  style: getGreyTextStyle(
                      fontSize: AppSize.s14,
                      fontWeight: FontWeightManager.regular),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
