import 'package:flutter/material.dart';
import 'package:job_finder_app/common/style.dart';
import 'package:job_finder_app/ui/home_page.dart';

class LandingPage extends StatelessWidget {
  static const routeName = '/landing_page';
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  '${AssetImageIconManager.assetPath}/Ellipse 195.png',
                  width: 160.0,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 17.0,
                    ),
                    Image.asset(
                      '${AssetImageIconManager.assetPath}/Ellipse 193.png',
                      width: 160.0,
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppPadding.p40),
              child: Image.asset(
                '${AssetImageIconManager.assetPath}/Ellipse 194.png',
                width: 90.0,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 104.0,
                  left: AppSize.s24,
                  right: AppSize.s24,
                  bottom: 74.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Find the Job You've\nAlways Dreamed of",
                    style: getDarkTextStyle(
                        fontSize: AppSize.s26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'One of the places where you will find the\nright job with your field of interest, and you\njust have to wait for the manager to call\nyou to hire',
                    style: getGreyTextStyle(
                        fontSize: AppSize.s20,
                        fontWeight: FontWeightManager.light),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSize.s24),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HomePage.routeName);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: ColorManager.blueColor,
                      borderRadius: BorderRadius.circular(
                        AppSize.s10,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Get Started',
                        style: getWhiteTextStyle(
                            fontSize: AppSize.s20,
                            fontWeight: FontWeightManager.semiBold),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
