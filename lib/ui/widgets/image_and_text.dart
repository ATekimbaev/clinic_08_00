import 'package:app_0800/core/theme%20/app_fonts.dart';
import 'package:flutter/material.dart';

class ImageAndText extends StatelessWidget {
  const ImageAndText({Key? key, required this.image, required this.text})
      : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(image),
        const SizedBox(
          width: 25,
        ),
        Flexible(
          child: Text(
            text,
            style: AppFonts.w400s15,
          ),
        ),
      ],
    );
  }
}
