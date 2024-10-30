import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/core/colors/appcolors.dart';
import 'package:myportfolio/core/constants/constants.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({super.key, required this.mainAxisAlignment});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.instagram,
              color: AppColors.textGray),
          onPressed: () {},
        ),
        Appconstants.smallWidth,
        IconButton(
          icon:
              const FaIcon(FontAwesomeIcons.github, color: AppColors.textGray),
          onPressed: () {},
        ),
        Appconstants.smallWidth,
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.facebook,
              color: AppColors.textGray),
          onPressed: () {},
        ),
        Appconstants.smallWidth,
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.linkedin,
              color: AppColors.textGray),
          onPressed: () {},
        ),
      ],
    );
  }
}
