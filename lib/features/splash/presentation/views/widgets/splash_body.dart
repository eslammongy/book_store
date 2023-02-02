import 'package:book_store/core/utils/assets_manager.dart';
import 'package:book_store/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> sliderAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    //Implement animation here
    sliderAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(animationController);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    animationController.forward();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.logoImage,
            width: 200,
          ),
          const SizedBox(
            height: 15,
          ),
          FadeTransition(
            opacity: sliderAnimation,
            child: Text(
              "E-Booky",
              style: TextStyle(
                  color: darkOrangeColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 45),
            ),
          ),
          const Text(
            "Read more free books...",
            style: TextStyle(
                color: Color(0xC2453B5E),
                fontWeight: FontWeight.w500,
                fontSize: 15),
          )
        ],
      ),
    );
  }
}
