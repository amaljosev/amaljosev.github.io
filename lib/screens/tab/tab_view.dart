import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/core/constants/constants.dart';
import 'package:myportfolio/core/font/font_size.dart';
import 'package:myportfolio/core/styles/appstyles.dart';
import 'package:myportfolio/screens/common/my_elevated_button.dart';
import 'package:myportfolio/screens/controllers/home_controller/home_controller.dart';
import 'package:myportfolio/screens/tab/widgets/skills_widget.dart';
import 'package:myportfolio/screens/web/widgets/home_title_section_widget.dart';
import 'package:myportfolio/screens/widgets/about_image_widget.dart';
import 'package:myportfolio/screens/widgets/home_image_widget.dart';
import 'package:myportfolio/screens/widgets/services_widget.dart';
import 'package:myportfolio/screens/widgets/web_appbar.dart';

class TabView extends StatelessWidget {
  const TabView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final homeCtrl = Get.put(HomeController());
    return Scaffold(
      body: ListView(
        children: [
          const WebAppbar(),
          Row(
            children: [
              HomeTitleSectionWidget(
                size: size,
                fontSize: 0.02,
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
          ),
          Appconstants.sHight(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Services', style: Appstyles.headline(context, 0.04)),
            ],
          ),
          Appconstants.largeheight,
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: List.generate(
              homeCtrl.myServices.length,
              (index) => ServiesWidget(
                isMobile: false,
                size: size,
                service: homeCtrl.myServices[index],
                padding: 15,
                titleFontSize: FontSize.tabHeadingSize,
                descriptionFontSize: FontSize.tabcontentSize,
                containerHeight: 0.45,
                containerWidth: 0.45,
                iconSize: FontSize.tabIconSizeLarge,
              ),
            ),
          ),
          Appconstants.sHight(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('About Me', style: Appstyles.headline(context, 0.035)),
            ],
          ),
          Appconstants.largeheight,
          Row(
            children: [
              AboutMeImageWidget(size: size),
              SizedBox(
                height: size.width * 0.35,
                width: size.width * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                          "I am a highly motivated and self-taught Flutter developer with a passion for building visually appealing, user-friendly mobile applications. With a strong foundation in object-oriented programming, I’m skilled at creating clean, efficient code and thrive on quickly adapting to new technologies. I enjoy transforming ideas into functional, beautiful apps that prioritize user experience and seamless performance.",
                          style: Appstyles.content(
                              context: context,
                              fontSize: FontSize.tabcontentSize)),
                      Row(
                        children: [
                          MyElevationButton(
                              title: 'Hire Me',
                              onPressed: () => log('message')),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Appconstants.largeheight,
          SizedBox(
            child: Wrap(
              runSpacing: 20,
              alignment: WrapAlignment.spaceEvenly,
              children: List.generate(
                  homeCtrl.skills.length,
                  (index) => TabSkillsWidget(
                      skill: homeCtrl.skills[index],
                      size: size,
                      fontSize: FontSize.tabcontentSize,
                      containerWidth: 0.15)),
            ),
          ),
          Appconstants.sHight(context),
        ],
      ),
    );
  }
}
