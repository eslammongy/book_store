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
          Text(
            "E-Booky",
            style: GoogleFonts.righteous(
                textStyle: TextStyle(
                    color: orangeColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w700)),
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
