import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/core/colors/appcolors.dart';
import 'package:myportfolio/core/constants/constants.dart';
import 'package:myportfolio/screens/widgets/experience_widget.dart';
import 'package:myportfolio/screens/widgets/my_elevated_button.dart';
import 'package:myportfolio/screens/widgets/my_outlined_button.dart';
import 'package:myportfolio/screens/widgets/social_widget.dart';

class HomeTitleSectionWidget extends StatelessWidget {
  const HomeTitleSectionWidget(
      {super.key,
      required this.experienceWidth,
      required this.experienceHight,
      required this.smallSpace,
      required this.bigSpace,
      required this.size,
      required this.verySmallSpace,
      required this.experienceFontSize,
      required this.mainWidth,
      this.myCrossAxisAlignment = CrossAxisAlignment.start,
      required this.myMainAxisAlignment,
      required this.fontSize});

  final Size size;
  final double mainWidth;
  final double fontSize;
  final double experienceWidth;
  final double experienceHight;
  final SizedBox smallSpace;
  final SizedBox bigSpace;
  final SizedBox verySmallSpace;
  final double experienceFontSize;
  final CrossAxisAlignment myCrossAxisAlignment;
  final MainAxisAlignment myMainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * mainWidth,
      child: Padding(
        padding: EdgeInsets.only(
            left:
                myCrossAxisAlignment == CrossAxisAlignment.center ? 0.0 : 25.0,
            top: 30.0),
        child: Column(
          crossAxisAlignment: myCrossAxisAlignment,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Hi, I am',
              style: TextStyle(
                color: AppColors.textGray,
                fontSize: size.width * fontSize,
              ),
            ),
            Text(
              'Amal Jose',
              style: TextStyle(
                color: AppColors.textGray,
                fontSize: size.width * (fontSize + 0.02),
                fontWeight: FontWeight.bold,
              ),
            ),
            smallSpace,
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (bounds) => const LinearGradient(
                colors: [AppColors.accentOrange, Colors.red],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds),
              child: Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: size.width * (fontSize + 0.03),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SocialWidget(mainAxisAlignment: myMainAxisAlignment),
            bigSpace,
            Row(
              mainAxisAlignment: myMainAxisAlignment,
              children: [
                MyElevationButton(
                    title: 'Hire Me', onPressed: () => log('message')),
                Appconstants.mediumWidth,
                MyOutlinedButton(
                    icon: FontAwesomeIcons.download,
                    title: 'Download CV',
                    onPressed: () => log('message'))
              ],
            ),
            bigSpace,
            ExpeienceWidget(
                size: size,
                containerHeight: experienceHight,
                containerWidth: experienceWidth,
                containerFontSize: experienceFontSize),
          ],
        ),
      ),
    );
  }
}
