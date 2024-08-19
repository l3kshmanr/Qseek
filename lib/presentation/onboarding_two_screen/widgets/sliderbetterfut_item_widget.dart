import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class SliderbetterfutItemWidget extends StatelessWidget {
  SliderbetterfutItemWidget({
    Key? key,
    this.onTapLabel,
  }) : super(
          key: key,
        );

  VoidCallback? onTapLabel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: getPadding(
          left: 24,
          top: 32,
          right: 24,
          bottom: 32,
        ),
        decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: getHorizontalSize(273),
              margin: getMargin(
                left: 6,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Better ",
                      style: theme.textTheme.headlineSmall,
                    ),
                    TextSpan(
                      text: "future is starting from you",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 17,
                top: 14,
                right: 17,
              ),
              child: Text(
                "Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem . ",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleSmallBluegray300.copyWith(
                  height: 1.57,
                ),
              ),
            ),
            CustomElevatedButton(
              width: getHorizontalSize(101),
              text: "Next",
              margin: getMargin(
                top: 69,
              ),
              buttonStyle: CustomButtonStyles.fillPrimary,
              onTap: () {
                onTapLabel?.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}
