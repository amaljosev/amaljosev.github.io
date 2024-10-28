import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/core/colors/appcolors.dart';
import 'package:myportfolio/core/constants/constants.dart';
import 'package:myportfolio/core/styles/appstyles.dart';
import 'package:myportfolio/screens/controllers/home_controller/home_controller.dart';

class WebAppbar extends StatelessWidget {
  const WebAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final homeCtrl = Get.put(HomeController());
    return Obx(() => AppBar(
          backgroundColor: AppColors.secondaryBackground,
          foregroundColor: AppColors.textLight,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(), 
              Flexible(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      homeCtrl.menu.length,
                      (index) => MouseRegion(
                        onEnter: (event) => homeCtrl.isHoverd[index] = true,
                        onExit: (event) => homeCtrl.isHoverd[index] = false,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: size.width * 0.02),
                          child: Text(homeCtrl.menu[index].title,
                              style: homeCtrl.isHoverd[index]
                                  ? Appstyles.appbarHoverTextStyle
                                  : homeCtrl.menu[index].style),
                        ),
                      ),
                    )),
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: AppColors.textLight,
                  backgroundColor: AppColors.accentOrange),
              onPressed: () {},
              child: const Text('Hire Me'),
            ),
            Appconstants.smallWidth
            ],
          ),
          
        ));
  }
}
