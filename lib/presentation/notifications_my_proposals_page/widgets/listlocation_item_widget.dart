import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListlocationItemWidget extends StatelessWidget {
  const ListlocationItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomIconButton(
          height: getSize(48),
          width: getSize(48),
          margin: getMargin(
            bottom: 42,
          ),
          padding: getPadding(
            all: 7,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgLocation,
          ),
        ),
        Expanded(
          child: Padding(
            padding: getPadding(
              left: 12,
              top: 4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Senior UI/UX Designer",
                  style: CustomTextStyles.titleSmallPrimaryBold,
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Text(
                    "",
                    style: CustomTextStyles.labelLargeBluegray300SemiBold,
                  ),
                ),
                CustomElevatedButton(
                  height: getVerticalSize(28),
                  width: getHorizontalSize(78),
                  text: "Opened",
                  margin: getMargin(
                    top: 17,
                  ),
                  buttonStyle: CustomButtonStyles.fillGreen,
                  buttonTextStyle: CustomTextStyles.bodySmallGreenA700,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
