import 'package:book_store/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/constants/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 10),
      child: Row(
        children: [
          Image.asset(
            "${AppAssets.logoImage}",
            width: 40,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push('/searchScreen');
              },
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 25,
                color: greenColor,
              ))
        ],
      ),
    );
  }
}
