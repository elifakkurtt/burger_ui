import 'package:burger_ui/constans/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.logout_outlined),
          ),
        ],
      ),
      body: const SafeArea(
        child: Center(
          child: Text(
            "Hoş Geldiniz!",
            style: pBold,
          ),
        ),
      ),
    );
  }
}
