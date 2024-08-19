import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/firebase_options.dart';
import 'package:mohammed_s_application1/presentation/login_screen/auth_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: CustomImageView(
            imagePath: ImageConstant.splashimg,
            height: getVerticalSize(300),
            width: getHorizontalSize(300),
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    navigateTohome();
  }

  navigateTohome() async {
    await Future.delayed(Duration(seconds: 2), () {});

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => AuthPage()),
    );
  }
}
