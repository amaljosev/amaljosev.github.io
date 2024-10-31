import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/core/constants/constants.dart';
import 'package:myportfolio/core/font/font_size.dart';
import 'package:myportfolio/core/styles/appstyles.dart';
import 'package:myportfolio/screens/controllers/home_controller/home_controller.dart';
import 'package:myportfolio/screens/web/widgets/home_title_section_widget.dart';
import 'package:myportfolio/screens/widgets/about_image_widget.dart';
import 'package:myportfolio/screens/widgets/about_skills_widget.dart';
import 'package:myportfolio/screens/widgets/home_image_widget.dart';
import 'package:myportfolio/screens/widgets/services_widget.dart';
import 'package:myportfolio/screens/widgets/web_appbar.dart';

class WebView extends StatelessWidget {
  const WebView({super.key});

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
          ),
          Appconstants.sHight(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Services', style: Appstyles.headline(context, 0.035)),
            ],
          ),
          Appconstants.largeheight,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              homeCtrl.myServices.length,
              (index) => ServiesWidget(
                isMobile: false,
                size: size,
                titleFontSize: FontSize.webHeadingSize,
                descriptionFontSize: FontSize.webcontentSize,
                service: homeCtrl.myServices[index],
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
              AboutAndSkillsWidget(
                size: size,
                mySkills: homeCtrl.skills,
              ),
            ],
          ),
          Appconstants.sHight(context),
        ],
      ),
    );
  }
}
