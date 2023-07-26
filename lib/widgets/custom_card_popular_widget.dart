import 'package:flutter/material.dart';
import 'package:job_finder_app/common/style.dart';

class CustomCardPopularWidget extends StatelessWidget {
  final String image;
  final String selary;
  final String job;
  final String location;
  final String category;
  final Color? color;
  const CustomCardPopularWidget({
    required this.image,
    required this.selary,
    required this.job,
    required this.location,
    Key? key,
    this.color,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppPadding.p16),
      child: SizedBox(
        width: 300.0,
        child: Card(
          color: color ?? ColorManager.blueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60.0,
                      width: 60.0,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            image,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      selary,
                      style: getWhiteTextStyle(
                          fontSize: AppSize.s16,
                          fontWeight: FontWeightManager.light),
                    )
                  ],
                ),
                const SizedBox(
                  height: AppSize.s22,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          job,
                          style: getWhiteTextStyle(
                              fontSize: AppSize.s18,
                              fontWeight: FontWeightManager.bold),
                        ),
                        const SizedBox(
                          height: AppSize.s2,
                        ),
                        Text(
                          location,
                          style: getWhiteTextStyle(
                              fontSize: AppSize.s14,
                              fontWeight: FontWeightManager.regular),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 30.0,
                      padding: const EdgeInsets.all(AppPadding.p6),
                      decoration: BoxDecoration(
                        color: ColorManager.primaryColor,
                        borderRadius: BorderRadius.circular(AppSize.s6),
                      ),
                      child: Text(
                        category,
                        style: getDarkTextStyle(
                            fontSize: AppSize.s14,
                            fontWeight: FontWeightManager.regular),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSize.s10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
