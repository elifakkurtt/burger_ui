import 'package:burger_ui/component/my_button.dart';
import 'package:burger_ui/component/text_field.dart';
import 'package:burger_ui/constans/colors.dart';
import 'package:burger_ui/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                const TextFieldWidget(
                  obscureText: false,
                  hintText: "Name",
                  prefixIcon: Icon(
                    Icons.person_2_outlined,
                    color: darkBlue,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextFieldWidget(
                  obscureText: false,
                  hintText: "Surname",
                  prefixIcon: Icon(
                    Icons.person_pin_rounded,
                    color: darkBlue,
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                  obscureText: true,
                  hintText: "Password",
                  prefixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: darkBlue,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextFieldWidget(
                  obscureText: true,
                  hintText: "Confirm Password",
                  prefixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: darkBlue,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                MyButton(
                  text: "Sign Up",
                  borderColor: blue,
                  color: darkBlue,
                  onTap: () {
                    Get.to( const HomePage());
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
