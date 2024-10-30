import 'package:flutter/material.dart';
import 'package:myportfolio/core/colors/appcolors.dart';

class MyElevationButton extends StatelessWidget {
  const MyElevationButton({super.key, required this.title, this.onPressed,this.padding=20});
  final String title;
  final void Function()? onPressed;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding:  EdgeInsets.all(padding),
          backgroundColor: AppColors.accentOrange,
          foregroundColor: AppColors.textLight,
          shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
