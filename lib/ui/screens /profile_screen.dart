import 'package:app_0800/core/assets/app_images.dart';
import 'package:app_0800/core/theme%20/app_colors.dart';
import 'package:app_0800/core/theme%20/app_fonts.dart';
import 'package:app_0800/ui/widgets/app_button.dart';
import 'package:app_0800/ui/widgets/image_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 1,
        title: Text(
          'Профиль',
          style: AppFonts.w600s17.copyWith(color: AppColors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Settings'),
                ),
              );
            },
            icon: const Icon(
              Icons.settings_outlined,
              color: AppColors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Зачем нужен профиль?',
              style: AppFonts.w500s22,
            ),
            const SizedBox(
              height: 25,
            ),
            const ImageAndText(
                image: AppImages.hospital,
                text: 'Записывайтесь на прием к самым лучшим специалистам'),
            const SizedBox(
              height: 30,
            ),
            const ImageAndText(
                image: AppImages.clipboard,
                text:
                    'Сохраняйте результаты ваших анализов, диагнозы и рекомендации от врачей в собственную библиотеку'),
            const SizedBox(
              height: 30,
            ),
            const ImageAndText(
                image: AppImages.speech,
                text:
                    'Просматривайте отзывы о врачах и дополняйте собственными комментариями'),
            const SizedBox(
              height: 30,
            ),
            const ImageAndText(
                image: AppImages.bell,
                text:
                    'Получайте уведомления о приеме или о поступивших сообщениях'),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: AppButton(
                title: 'Войти',
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
