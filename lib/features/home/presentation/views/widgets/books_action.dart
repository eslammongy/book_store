import 'package:book_store/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookActionsButtons extends StatelessWidget {
  const BookActionsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: "19.99 \$",
              textColor: whiteColor,
              backgroundColor: greenColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12)),
            ),
          ),
          Expanded(
            child: CustomButton(
              textColor: whiteColor,
              text: "Free Download",
              backgroundColor: orangeColor,
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  topRight: Radius.circular(12)),
            ),
          ),
        ],
      ),
    );
  }
}
