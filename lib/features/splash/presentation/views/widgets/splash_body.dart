import 'package:book_store/core/utils/assets_manager.dart';
import 'package:book_store/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            AppAssets.logoImage,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: Text(
            "Bookly",
            style: TextStyle(
                color: greenColor, fontWeight: FontWeight.w700, fontSize: 35),
          ),
        )
      ],
    );
  }
}
