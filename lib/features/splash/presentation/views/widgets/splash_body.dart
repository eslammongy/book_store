import 'package:book_store/core/utils/assets_manager.dart';
import 'package:book_store/core/constants/app_colors.dart';
import 'package:book_store/features/home/presentation/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadedAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation();
    navigateToHome();
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
      child: FadeTransition(
        opacity: fadedAnimation,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.logoImage,
              width: 120,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "E-",
                  style: GoogleFonts.righteous(
                      textStyle: TextStyle(
                          color: orangeColor,
                          fontSize: 45,
                          fontWeight: FontWeight.w700)),
                ),
                Text(
                  "Booky",
                  style: GoogleFonts.righteous(
                      textStyle: TextStyle(
                          color: greenColor,
                          fontSize: 45,
                          fontWeight: FontWeight.w700)),
                ),
              ],
            ),
            Text(
              "Read more free books...",
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: greyColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15)),
            )
          ],
        ),
      ),
    );
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).pushReplacement('/homeScreen');
    });
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    //Implement animation here
    fadedAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(animationController);
    animationController.forward();
  }
}
