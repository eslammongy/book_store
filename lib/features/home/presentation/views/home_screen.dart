import 'package:book_store/features/home/presentation/views/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HomeScreenBody());
  }
}
