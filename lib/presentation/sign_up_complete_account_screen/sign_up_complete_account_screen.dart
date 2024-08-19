import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/presentation/home_container_screen/home_container_screen.dart';
import 'package:mohammed_s_application1/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpCompleteAccountScreen extends StatelessWidget {
  SignUpCompleteAccountScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();
  TextEditingController repassController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 24, top: 13, right: 24, bottom: 13),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgGroup162799,
                              height: getSize(24),
                              width: getSize(24),
                              onTap: () {
                                onTapImgImage(context);
                              }),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(top: 47, right: 50),
                                  child: Text("Create your account",
                                      style: theme.textTheme.headlineSmall))),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 9),
                                  child: Text("Meow Meow",
                                      style: CustomTextStyles
                                          .titleSmallBluegray400_1))),
                          Padding(
                              padding: getPadding(top: 33),
                              child: Text("Enter your email",
                                  style: theme.textTheme.titleSmall)),
                          CustomTextFormField(
                              controller: emailController,
                              margin: getMargin(top: 9),
                              hintText: "Enter your email",
                              hintStyle:
                                  CustomTextStyles.titleMediumBluegray400,
                              contentPadding: getPadding(
                                  left: 12, top: 15, right: 12, bottom: 15)),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Text("Password",
                                  style: theme.textTheme.titleSmall)),
                          CustomTextFormField(
                              controller: passController,
                              margin: getMargin(top: 9),
                              hintText: "Create a password",
                              hintStyle:
                                  CustomTextStyles.titleMediumBluegray400,
                              contentPadding: getPadding(
                                  left: 12, top: 15, right: 12, bottom: 15)),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Text("Password",
                                  style: theme.textTheme.titleSmall)),
                          CustomTextFormField(
                              controller: repassController,
                              margin: getMargin(top: 9),
                              hintText: "Re-enter password",
                              hintStyle:
                                  CustomTextStyles.titleMediumBluegray400,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 14, right: 16, bottom: 14),
                                  child: CustomImageView()),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(52)),
                              obscureText: true,
                              contentPadding:
                                  getPadding(left: 16, top: 15, bottom: 15)),
                          CustomElevatedButton(
                              onTap: () {
                                signUpuser(context);
                              },
                              text: "Continue with Email",
                              margin: getMargin(top: 40),
                              buttonStyle: CustomButtonStyles.fillPrimary),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      getPadding(left: 34, top: 28, right: 40),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Already have an account?",
                                            style: CustomTextStyles
                                                .titleMediumBluegray300),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtLargelabelmediu(context);
                                            },
                                            child: Padding(
                                                padding: getPadding(left: 3),
                                                child: Text(" Login",
                                                    style: theme.textTheme
                                                        .titleMedium)))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: getHorizontalSize(245),
                                  margin: getMargin(
                                      left: 40, top: 19, right: 40, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "By signing up you agree to our ",
                                            style: CustomTextStyles
                                                .titleSmallBluegray400SemiBold),
                                        TextSpan(
                                            text: "Terms",
                                            style: CustomTextStyles
                                                .titleSmallErrorContainer),
                                        TextSpan(
                                            text: " and ",
                                            style: CustomTextStyles
                                                .titleSmallBluegray400SemiBold),
                                        TextSpan(
                                            text: "Conditions of Use",
                                            style: CustomTextStyles
                                                .titleSmallErrorContainer)
                                      ]),
                                      textAlign: TextAlign.center)))
                        ])))));
  }

  /// navigates back to the previous screen.

  onTapImgImage(BuildContext context) {
    Navigator.pop(context);
  }

  /// navigates to the loginScreen when the action is triggered.

  onTapTxtLargelabelmediu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  void signUpuser(BuildContext context) async {
    try {
      if (passController.text == repassController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text, password: passController.text);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeContainerScreen()),
        );
      } else {
        print("Error");
      }
    } catch (e) {
      // Handle registration failure, show an error message, etc.
      print('Error during registration: $e');
    }
  }
}
