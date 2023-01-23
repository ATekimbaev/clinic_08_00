import 'package:flutter/material.dart';

import '../../core/theme /app_colors.dart';
import '../../core/theme /app_fonts.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: 296,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: AppFonts.w600s18,
        ),
      ),
    );
  }
}
