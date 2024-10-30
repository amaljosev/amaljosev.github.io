import 'package:flutter/material.dart';
import 'package:myportfolio/core/constants/constants.dart';
import 'package:myportfolio/screens/web/widgets/home_title_section_widget.dart';
import 'package:myportfolio/screens/widgets/home_image_widget.dart';
import 'package:myportfolio/screens/widgets/web_appbar.dart';

class TabView extends StatelessWidget {
  const TabView({super.key});

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
                experienceWidth: 0.4,
                experienceHight: 0.1,
                mainWidth: 0.5,
                smallSpace: Appconstants.verySmallheight,
                verySmallSpace: Appconstants.tinyHeight,
                bigSpace: Appconstants.mediumheight,
                experienceFontSize: 0.017,
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
