import 'package:flutter/material.dart' hide SearchController;
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  const SearchItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 16,
      ),
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIconButton(
            height: getSize(48),
            width: getSize(48),
            margin: getMargin(
              bottom: 68,
            ),
            padding: getPadding(
              all: 7,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.imgLightbulb,
            ),
          ),
          Padding(
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
                  style: CustomTextStyles.titleMediumBold_1,
                ),
                Padding(
                  padding: getPadding(
                    top: 5,
                  ),
                  child: Text(
                    "",
                    style: CustomTextStyles.labelLargeBluegray300SemiBold,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 12,
                  ),
                  child: Text(
                    "560 - 12.000/Month",
                    style: CustomTextStyles.labelLargeGray600_1,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 13,
                  ),
                  child: Row(
                    children: [
                      CustomElevatedButton(
                        height: getVerticalSize(28),
                        width: getHorizontalSize(70),
                        text: "Fulltime",
                        buttonTextStyle: theme.textTheme.labelLarge!,
                      ),
                      CustomElevatedButton(
                        height: getVerticalSize(28),
                        width: getHorizontalSize(103),
                        text: "Two days ago",
                        margin: getMargin(
                          left: 8,
                        ),
                        buttonTextStyle: theme.textTheme.labelLarge!,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgBookmark,
            height: getSize(24),
            width: getSize(24),
            margin: getMargin(
              left: 30,
              bottom: 92,
            ),
          ),
        ],
      ),
    );
  }
}
