import 'package:flutter/material.dart';
import 'package:myportfolio/core/constants/constants.dart';
import 'package:myportfolio/screens/web/widgets/home_title_section_widget.dart';
import 'package:myportfolio/screens/widgets/home_image_widget.dart';
import 'package:myportfolio/screens/widgets/web_appbar.dart';

class WebView extends StatelessWidget {
  const WebView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          const WebAppbar(),
          Row(
            children: [
              HomeTitleSectionWidget(
                size: size,
                experienceWidth: 0.27,
                experienceHight: 0.06,
                mainWidth: 0.5,
                verySmallSpace: Appconstants.verySmallheight,
                bigSpace: Appconstants.extraLargeheight,
                smallSpace: Appconstants.tinyHeight,
                experienceFontSize: 0.01,
                myMainAxisAlignment: MainAxisAlignment.start,
                myCrossAxisAlignment: CrossAxisAlignment.start,
              ),
              HomeImageWidget(size: size),
            ],
          )
        ],
      ),
    );
  }
}
