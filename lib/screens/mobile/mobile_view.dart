import 'package:flutter/material.dart';
import 'package:myportfolio/core/colors/appcolors.dart';
import 'package:myportfolio/core/constants/constants.dart';
import 'package:myportfolio/screens/widgets/my_drawer.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: AppColors.textLight,
              backgroundColor: AppColors.accentOrange,
            ),
            onPressed: () {},
            child: const Text('Hire Me'),
          ),
          Appconstants.smallWidth
        ],
      ),
      drawer: const MyDrawerWidget(),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Mob view',
            style: TextStyle(
              color: AppColors.textLight,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
