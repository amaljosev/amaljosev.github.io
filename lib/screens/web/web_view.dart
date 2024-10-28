import 'package:flutter/material.dart';
import 'package:myportfolio/core/colors/appcolors.dart';
import 'package:myportfolio/screens/widgets/web_appbar.dart';

class WebView extends StatelessWidget {
  const WebView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const WebAppbar(),
          const Text(
            'Web view',
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
    );
  }
}
