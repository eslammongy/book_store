import 'package:flutter/material.dart';
import 'custome_appbar_details.dart';

class BooKDetailsBody extends StatelessWidget {
  const BooKDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: const [CustomDetailsAppBar()],
        ),
      ),
    );
  }
}
