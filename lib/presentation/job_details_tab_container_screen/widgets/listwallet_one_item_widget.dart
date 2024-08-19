import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';
import 'package:mohammed_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListwalletOneItemWidget extends StatelessWidget {
  const ListwalletOneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(67),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomIconButton(
            height: getSize(48),
            width: getSize(48),
            padding: getPadding(
              all: 12,
            ),
            decoration: IconButtonStyleHelper.fillTealA,
            child: CustomImageView(
              svgPath: ImageConstant.imgWallet,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 9,
            ),
            child: Text(
              "",
              style: CustomTextStyles.labelLargeBluegray300,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 9,
            ),
            child: Text(
              "",
              style: CustomTextStyles.titleSmallPrimarySemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
