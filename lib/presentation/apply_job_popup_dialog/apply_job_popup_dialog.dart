import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ApplyJobPopupDialog extends StatelessWidget {
  const ApplyJobPopupDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: getHorizontalSize(302),
      padding: getPadding(
        all: 32,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsup11,
            height: getSize(101),
            width: getSize(101),
          ),
          Padding(
            padding: getPadding(
              top: 25,
            ),
            child: Text(
              "Success",
              style: CustomTextStyles.titleMediumBold,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 9,
            ),
            child: Text(
              "Your Application is succesfully sent",
              style: CustomTextStyles.titleSmallBluegray400,
            ),
          ),
          CustomElevatedButton(
            height: getVerticalSize(46),
            width: getHorizontalSize(127),
            text: "Continue",
            margin: getMargin(
              top: 23,
            ),
            buttonStyle: CustomButtonStyles.fillPrimaryTL20,
            buttonTextStyle: CustomTextStyles.titleSmallGray5001,
          ),
        ],
      ),
    );
  }
}
