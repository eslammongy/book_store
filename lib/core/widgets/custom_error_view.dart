import 'package:book_store/core/constants/text_style.dart';
import 'package:flutter/material.dart';

class CustomErrorView extends StatelessWidget {
  const CustomErrorView({super.key, required this.errorMsg});
  final String errorMsg;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMsg,
        textAlign: TextAlign.center,
        style: AppTextStyle.textStyle20,
      ),
    );
  }
}
