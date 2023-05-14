import 'package:flutter/material.dart';
import 'package:dzen_app/feature/auth/views/login_screen.dart';
import '../../../common/utility/colors.dart';
import '../../../common/utility/custom_buttons.dart';

class WelcomePage extends StatelessWidget {
  static const String routeName = '/welcome-page';
  const WelcomePage({super.key});

  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Text(
                'Вітаймо в Дзенькіт',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: size.height / 9),
              Image.asset(
                'assets/image/bg.png',
                height: 340,
                width: 340,
                color: tabColor,
              ),
              SizedBox(height: size.height / 9),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Прочитайте нашу Політику конфіденційності. Натисніть "Продовжити", щоб прийняти Умови надання послуг.',
                  style: TextStyle(color: greyColor),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: size.width * 0.75,
                child: CustomButton(
                  text: 'ПРОДОВЖИТИ',
                  onPressed: () => navigateToLoginScreen(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
