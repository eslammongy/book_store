import 'package:book_store/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color(0xFFB9B9B9),
                offset: Offset(
                  1.0,
                  3.0,
                ),
                blurRadius: 6.0,
                spreadRadius: 1.0,
              ), //BoxShadow
            ],
            borderRadius: BorderRadius.circular(6),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AppAssets.testImage,
              ),
            )),
      ),
    );
  }
}
