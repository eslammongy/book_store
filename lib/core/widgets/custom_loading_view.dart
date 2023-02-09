import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomLoadingView extends StatelessWidget {
  const CustomLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: greenColor,
        strokeWidth: 2,
      ),
    );
  }
}
