import 'package:flutter/material.dart';
import 'package:myportfolio/core/colors/appcolors.dart';
import 'package:myportfolio/screens/widgets/web_appbar.dart';

class TabView extends StatelessWidget {
  const TabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const WebAppbar(),
            const Text(
              'Tab view',
              style: TextStyle(
                color: AppColors.textLight,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: AppColors.textLight,
                backgroundColor: AppColors.accentOrange,
              ),
              onPressed: () {},
              child: const Text('Hire Me'),
            ),
          ],
        ),
      ),
    );
  }
}
