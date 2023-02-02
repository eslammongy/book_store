import 'package:book_store/core/utils/constants/app_colors.dart';
import 'package:book_store/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BookStore());
}

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: whiteColor),
      home: const SplashScreen(),
    );
  }
}
