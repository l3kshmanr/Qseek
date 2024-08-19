import 'package:flutter/material.dart';import 'package:mohammed_s_application1/core/app_export.dart';import 'package:mohammed_s_application1/widgets/custom_elevated_button.dart';import 'package:mohammed_s_application1/widgets/custom_pin_code_text_field.dart';class EnterOtpScreen extends StatelessWidget {const EnterOtpScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA70001, resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 13, right: 24, bottom: 13), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgGroup162799, height: getSize(24), width: getSize(24), alignment: Alignment.centerLeft, onTap: () {onTapImgImage(context);}), Padding(padding: getPadding(top: 44), child: Text("Enter OTP", style: theme.textTheme.headlineSmall)), Container(width: getHorizontalSize(282), margin: getMargin(left: 22, top: 10, right: 22), child: RichText(text: TextSpan(children: [TextSpan(text: "We have just sent you 4 digit code via your email ", style: CustomTextStyles.titleSmallBluegray400_3), TextSpan(text: "example@gmail.com", style: CustomTextStyles.titleSmallPrimary_1)]), textAlign: TextAlign.center)), CustomPinCodeTextField(context: context, margin: getMargin(left: 16, top: 38, right: 15), onChanged: (value) {}), CustomElevatedButton(text: "Continue", margin: getMargin(top: 40), buttonStyle: CustomButtonStyles.fillPrimary, onTap: () {onTapContinue(context);}), Padding(padding: getPadding(left: 30, top: 26, right: 30, bottom: 5), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("Didn’t receive code?", style: CustomTextStyles.titleMediumBluegray300), Text("Resend Code", style: theme.textTheme.titleMedium)]))])))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapImgImage(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the jobTypeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the jobTypeScreen.
onTapContinue(BuildContext context) { Navigator.pushNamed(context, AppRoutes.jobTypeScreen); } 
 }
