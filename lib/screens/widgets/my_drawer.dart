import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/core/colors/appcolors.dart';
import 'package:myportfolio/core/styles/appstyles.dart';
import 'package:myportfolio/screens/controllers/home_controller/home_controller.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCtrl = Get.put(HomeController());
    return Drawer(
      backgroundColor: AppColors.primaryBackground,
      child: Column(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.secondaryBackground,
            ),
            child: Row(
              children: [
                Text(
                  'Amal Jose',
                  style: TextStyle(
                    color: AppColors.accentOrange,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
              child: Column(
            children: List.generate(
                homeCtrl.menu.length,
                (index) => Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ListTile(
                        title: Text(
                          homeCtrl.menu[index].title,
                          style: Appstyles.drawerTextStyle,
                        ),
                        hoverColor: AppColors.secondaryBackground,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        onTap: () => log('message'),
                      ),
                    )),
          ))
        ],
      ),
    );
  }
}
