import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/core/constants/constants.dart';
import 'package:myportfolio/core/styles/appstyles.dart';
import 'package:myportfolio/screens/controllers/home_controller/home_controller.dart';
import 'package:myportfolio/screens/web/widgets/home_title_section_widget.dart';
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
                titleFontSize: 0.022,
                descriptionFontSize: 0.02,
                containerHeight: 0.45,
                containerWidth: 0.45,
                iconSize: 0.1,
              ),
            ),
          ),
          Appconstants.largeheight,
        ],
      ),
    );
  }
}
