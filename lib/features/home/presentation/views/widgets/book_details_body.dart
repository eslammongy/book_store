import 'package:book_store/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:book_store/features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';
import 'custome_appbar_details.dart';

class BooKDetailsBody extends StatelessWidget {
  const BooKDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const CustomDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.18),
              child: const CustomBookImage(),
            )
          ],
        ),
      ),
    );
  }
}
