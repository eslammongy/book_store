import 'package:book_store/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'custom_textfield.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: const [CustomTextField()],
        ),
      ),
    );
  }
}
