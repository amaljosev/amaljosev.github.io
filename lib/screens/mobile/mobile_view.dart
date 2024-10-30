import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/core/constants/constants.dart';
import 'package:myportfolio/core/styles/appstyles.dart';
import 'package:myportfolio/screens/controllers/home_controller/home_controller.dart';
import 'package:myportfolio/screens/web/widgets/home_title_section_widget.dart';
import 'package:myportfolio/screens/widgets/home_image_widget.dart';
import 'package:myportfolio/screens/widgets/my_drawer.dart';
import 'package:myportfolio/screens/widgets/my_elevated_button.dart';
import 'package:myportfolio/screens/widgets/services_widget.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final homeCtrl = Get.put(HomeController());
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
          HomeTitleSectionWidget(
            size: size,
            fontSize: 0.045,
            experienceWidth: 0.8,
            experienceHight: 0.2,
            mainWidth: 1,
            smallSpace: Appconstants.verySmallheight,
            verySmallSpace: Appconstants.tinyHeight,
            bigSpace: Appconstants.mediumheight,
            experienceFontSize: 0.03,
            myMainAxisAlignment: MainAxisAlignment.center,
            myCrossAxisAlignment: CrossAxisAlignment.center,
          ),
          HomeImageWidget(size: size),
          Appconstants.sHight(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Services', style: Appstyles.headline(context,0.07)),
            ],
          ),
          Appconstants.mediumheight,
          Column(
            children: List.generate(
              homeCtrl.myServices.length,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ServiesWidget(
                    isMobile: true,
                    size: size,
                    service: homeCtrl.myServices[index],
                    padding: 15,
                    titleFontSize: 0.035,
                    descriptionFontSize: 0.03,
                    iconSize: 0.2),
              ),
            ),
          ),
          Appconstants.largeheight
        ],
      ),
    );
  }
}
