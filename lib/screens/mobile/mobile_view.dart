import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:myportfolio/core/constants/constants.dart';
import 'package:myportfolio/screens/web/widgets/home_title_section_widget.dart';
import 'package:myportfolio/screens/widgets/home_image_widget.dart';
import 'package:myportfolio/screens/widgets/my_drawer.dart';
import 'package:myportfolio/screens/widgets/my_elevated_button.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          MyElevationButton(
              title: 'Hire Me',
              padding: size.width * 0.0,
              onPressed: () => log('message')),
          Appconstants.smallWidth
        ],
      ),
      drawer: const MyDrawerWidget(),
      body: ListView(
        children: [
          Column(
            children: [
              HomeImageWidget(size: size),
              HomeTitleSectionWidget(
                size: size,
                experienceWidth: 0.5,
                experienceHight: 0.15,
                mainWidth: 1,
                smallSpace: Appconstants.verySmallheight,
                verySmallSpace: Appconstants.tinyHeight,
                bigSpace: Appconstants.mediumheight,
                experienceFontSize: 0.02,
                myMainAxisAlignment: MainAxisAlignment.center,
                myCrossAxisAlignment: CrossAxisAlignment.center,
              ),
            ],
          )
        ],
      ),
    );
  }
}
