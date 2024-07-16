import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/features/onboarding/presentation/view/onboarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigateToPage();
    super.initState();
  }

  void navigateToPage() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) {
          return OnBoardingView();
        }), (val) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset("assets/images/plant.svg"),
          ],
        ),
        Image.asset(
          "assets/images/logo.png",
          height: 170,
          width: 170,
        ),
        SvgPicture.asset(
          "assets/images/splash_bottom.svg",
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
