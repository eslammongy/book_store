import 'package:book_store/core/utils/assets_manager.dart';
import 'package:book_store/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [blackColor, greyColor],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              AppAssets.logoImage,
              width: 200,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              "E-Booky",
              style: TextStyle(
                  color: darkOrangeColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 45),
            ),
          )
        ],
      ),
    );
  }
}
