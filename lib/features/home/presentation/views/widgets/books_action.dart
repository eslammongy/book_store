import 'package:book_store/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../data/models/book_model/book_model.dart';

class BookActionsButtons extends StatelessWidget {
  const BookActionsButtons({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: "Free",
              textColor: whiteColor,
              backgroundColor: greenColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12)),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("can't launch this url !!")));
                }
              },
              textColor: whiteColor,
              text: setButtonText(bookModel),
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
  
  String setButtonText(BookModel bookModel){
    if(bookModel.volumeInfo.previewLink == null){
      return "Not Available";
    }else{
      return "Preview";
    }
  }
}
