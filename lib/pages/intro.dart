import 'package:burger_ui/component/my_button.dart';
import 'package:burger_ui/constans/colors.dart';
import 'package:burger_ui/pages/log_in.dart';
import 'package:burger_ui/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroPage extends StatelessWidget {
  const  IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: w,
            child: Image.asset(
              "assets/images/page_backgroung.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: w,
            color: Colors.black.withOpacity(0.6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(
                  borderColor: pink,
                  text: "Log In",
                  onTap: () {
                    Get.to( const LogInPage());
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                MyButton(
                  borderColor: blue,
                  text: "Sign Up",
                  onTap: () {
                    Get.to(const SignUpPage());
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
