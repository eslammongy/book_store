import 'package:book_store/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/text_style.dart';

class BookRatingRow extends StatelessWidget {
  const BookRatingRow(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: orangeColor,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          "$rating",
          style: AppTextStyle.textStyle16
              .copyWith(fontWeight: FontWeight.w600, color: greenColor),
        ),
        const SizedBox(
          width: 6,
        ),
        Opacity(
          opacity: 0.6,
          child: Text(
            "($count)",
            style: AppTextStyle.textStyle16
                .copyWith(color: greenColor, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
