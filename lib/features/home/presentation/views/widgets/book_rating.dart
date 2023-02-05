import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/text_style.dart';

class BookRatingRow extends StatelessWidget {
  const BookRatingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: orangeColor,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "4.8",
          style: AppTextStyle.textStyle16
              .copyWith(fontWeight: FontWeight.w600, color: greenColor),
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          "(2845)",
          style: AppTextStyle.textStyle14.copyWith(color: greyColor),
        ),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
