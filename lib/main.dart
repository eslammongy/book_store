import 'package:book_store/core/constants/app_colors.dart';
import 'package:book_store/core/utils/app_routes.dart';
import 'package:book_store/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookStore());
}

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: whiteColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routerConfig: AppRouter.router,
    );
  }
}
