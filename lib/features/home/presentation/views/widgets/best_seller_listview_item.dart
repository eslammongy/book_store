import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/text_style.dart';
import '../../../../../core/utils/assets_manager.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF3F3F3),
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFB9B9B9),
            offset: Offset(
              1.0,
              1.0,
            ),
            blurRadius: 8.0,
            spreadRadius: 1.0,
          ), //BoxShadow
        ],
      ),
      height: 120,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 2.6 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        AppAssets.testImage,
                      ),
                    )),
              ),
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text("Harry Potter and the Goblet of fire",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.textStyle20.copyWith(
                          fontFamily: AppTextStyle.gtSectraFine,
                          letterSpacing: 1.1,
                          fontWeight: FontWeight.w700,
                          color: greenColor)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text("J.K. Rowling",
                    style: AppTextStyle.textStyle14.copyWith(
                        color: greyColor, fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text("19.99 \$",
                        style: AppTextStyle.textStyle20.copyWith(
                            color: greenColor, fontWeight: FontWeight.bold)),
                    const Spacer(),
                    const BookRatingRow(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
