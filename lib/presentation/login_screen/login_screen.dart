import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application1/widgets/custom_outlined_button.dart';
import 'package:mohammed_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  // final user = FirebaseAuth.instance.currentUser!;

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

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
                child: SingleChildScrollView(
                  child: Container(
                      width: double.maxFinite,
                      padding:
                          getPadding(left: 24, top: 13, right: 24, bottom: 13),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgGroup162799,
                                height: getSize(24),
                                width: getSize(24),
                                alignment: Alignment.centerLeft,
                                onTap: () {
                                  onTapImgImage(context);
                                }),
                            Padding(
                                padding: getPadding(top: 44),
                                child: Text("Hi, Welcome Back! 👋",
                                    style: theme.textTheme.headlineSmall)),
                            Padding(
                                padding: getPadding(top: 11),
                                child: Text("",
                                    style: CustomTextStyles
                                        .titleSmallBluegray400_1)),
                            CustomOutlinedButton(
                                height: getVerticalSize(56),
                                text: "Continue with Google",
                                margin: getMargin(top: 31),
                                leftIcon: Container(
                                    margin: getMargin(right: 12),
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgGooglesymbol1)),
                                buttonStyle: CustomButtonStyles.outlinePrimary,
                                buttonTextStyle: theme.textTheme.titleMedium!),
                            CustomOutlinedButton(
                                height: getVerticalSize(56),
                                text: "Continue with Apple",
                                margin: getMargin(top: 16),
                                leftIcon: Container(
                                    margin: getMargin(right: 12),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgIconApple)),
                                buttonStyle: CustomButtonStyles.outlinePrimary,
                                buttonTextStyle: theme.textTheme.titleMedium!),
                            Padding(
                                padding:
                                    getPadding(left: 33, top: 26, right: 33),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 8, bottom: 8),
                                          child: SizedBox(
                                              width: getHorizontalSize(62),
                                              child: Divider())),
                                      Padding(
                                          padding: getPadding(left: 8),
                                          child: Text("Or continue with",
                                              style: CustomTextStyles
                                                  .titleSmallBluegray300)),
                                      Padding(
                                          padding:
                                              getPadding(top: 8, bottom: 8),
                                          child: SizedBox(
                                              width: getHorizontalSize(74),
                                              child: Divider(
                                                  indent:
                                                      getHorizontalSize(12))))
                                    ])),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(top: 28),
                                    child: Text("Login",
                                        style: theme.textTheme.titleSmall))),
                            CustomTextFormField(
                                /////////////Controller
                                controller: emailController,
                                margin: getMargin(top: 9),
                                hintText: "Enter your email address",
                                hintStyle:
                                    CustomTextStyles.titleMediumBluegray400,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.emailAddress,
                                contentPadding: getPadding(
                                    left: 12, top: 15, right: 12, bottom: 15)),
                            CustomTextFormField(
                                /////////////Controller
                                controller: passController,
                                margin: getMargin(top: 9),
                                hintText: "Enter your password",
                                hintStyle:
                                    CustomTextStyles.titleMediumBluegray400,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                contentPadding: getPadding(
                                    left: 12, top: 15, right: 12, bottom: 15)),
                            CustomElevatedButton(
                              text: "LogIn",
                              margin: getMargin(top: 40),
                              buttonStyle: CustomButtonStyles.fillPrimary,
                              ////////SignIn Method
                              onTap: signUsein,
                            ),
                            Padding(
                                padding:
                                    getPadding(left: 37, top: 26, right: 41),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(bottom: 1),
                                          child: Text("Don't have an account?",
                                              style: CustomTextStyles
                                                  .titleMediumBluegray300)),
                                      GestureDetector(
                                          onTap: () {
                                            onTapTxtLargelabelmediu(context);
                                          },
                                          child: Padding(
                                              padding: getPadding(left: 1),
                                              child: Text(" Sign up",
                                                  style: theme
                                                      .textTheme.titleMedium)))
                                    ])),
                            Container(
                                width: getHorizontalSize(245),
                                margin: getMargin(
                                    left: 40, top: 84, right: 40, bottom: 5),
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
                                    textAlign: TextAlign.center))
                          ])),
                ))));
  }

  /// navigates back to the previous screen.
  onTapImgImage(BuildContext context) {
    Navigator.pop(context);
  }

  /// navigates to the enterOtpScreen when the action is triggered.

  onTapContinuewith(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// navigates to the signUpCreateAcountScreen when the action is triggered.

  onTapTxtLargelabelmediu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpCompleteAccountScreen);
  }

//////////Sign Method Definition:
  void signUsein() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, password: passController.text);
  }
}
