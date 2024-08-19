import 'package:flutter/material.dart';import 'package:mohammed_s_application1/core/app_export.dart';import 'package:mohammed_s_application1/widgets/custom_elevated_button.dart';class ConfirmationDialog extends StatelessWidget {const ConfirmationDialog({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return Container(width: getHorizontalSize(331), padding: getPadding(left: 25, top: 39, right: 25, bottom: 39), decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: getHorizontalSize(279), margin: getMargin(top: 3), child: RichText(text: TextSpan(children: [TextSpan(text: "I agree to the ", style: CustomTextStyles.titleMediumBluegray400_2), TextSpan(text: "Terms of Service", style: theme.textTheme.titleMedium), TextSpan(text: " and ", style: CustomTextStyles.titleMediumBluegray400_2), TextSpan(text: "Conditions of Use", style: theme.textTheme.titleMedium), TextSpan(text: " including consent to electronic communications and I affirm that the information provided is my own.", style: CustomTextStyles.titleMediumBluegray400_2)]), textAlign: TextAlign.center)), CustomElevatedButton(height: getVerticalSize(46), width: getHorizontalSize(181), text: "Agree and continue", margin: getMargin(top: 21), buttonStyle: CustomButtonStyles.fillPrimaryTL20, buttonTextStyle: CustomTextStyles.titleSmallGray5001, onTap: () {onTapAgreeand(context);}), Padding(padding: getPadding(top: 28), child: Text("Disgree", style: CustomTextStyles.titleSmallRedA200))])); } 
/// Navigates to the homeContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the homeContainerScreen.
onTapAgreeand(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeContainerScreen); } 
 }
