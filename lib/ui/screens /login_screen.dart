import 'package:app_0800/core/theme%20/app_colors.dart';
import 'package:app_0800/core/theme%20/app_fonts.dart';
import 'package:app_0800/ui/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

String? errorText;
TextEditingController controller = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 1,
        title: Text(
          'Вход',
          style: AppFonts.w600s17.copyWith(color: AppColors.black),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: AppColors.black.withOpacity(0.54),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Войти',
              style: AppFonts.w700s34,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Номер телефона',
              style: AppFonts.w400s15,
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: controller,
              onChanged: (val) {
                if (val.length < 9 && val.isNotEmpty) {
                  errorText = 'Введит корректный номер';
                } else {
                  errorText = null;
                }
                setState(() {});
              },
              maxLength: 9,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  errorText: errorText,
                  counterText: '',
                  border: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(width: 2, color: AppColors.blackBlue),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(width: 2, color: AppColors.blackBlue),
                  ),
                  prefix: const Text(
                    '0',
                    style: AppFonts.w700s17,
                  ),
                  hintText: '  _ _ _  _ _ _  _ _ _'),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'На указанный вами номер придет однократное СМС-сообщение с кодом подтверждения.',
              style: AppFonts.w400s15,
            ),
            const SizedBox(
              height: 108,
            ),
            Center(
              child: AppButton(
                title: 'Далее',
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setString('phone', controller.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(prefs.getString('phone') ?? 'Empty'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
