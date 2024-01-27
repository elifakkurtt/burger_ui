import 'package:burger_ui/component/my_button.dart';
import 'package:burger_ui/component/text_field.dart';
import 'package:burger_ui/constans/colors.dart';
import 'package:burger_ui/pages/home.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: beige,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/jacks.png",
                  width: 300,
                ),
                const TextFieldWidget(
                  obscureText: false,
                  hintText: "E-Mail",
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: darkBlue,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextFieldWidget(
                  obscureText: false,
                  hintText: "Password",
                  prefixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: darkBlue,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                MyButton(
                  color: darkBlue,
                  borderColor: blue,
                  text: "Log In",
                  onTap: () {
                    Get.to(const HomePage());
                  },
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/images/bottom.png",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
