import 'package:book_store/core/utils/assets_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
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
          ),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) =>
                const Icon(Icons.error_rounded),
          ),
        ),
      ),
    );
  }
}
