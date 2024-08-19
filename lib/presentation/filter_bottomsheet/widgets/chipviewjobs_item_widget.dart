import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewjobsItemWidget extends StatelessWidget {
  const ChipviewjobsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        top: 14,
        right: 16,
        bottom: 14,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Part Time",
        style: TextStyle(
          color: appTheme.gray5001,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
      ),
      avatar: CustomImageView(
        svgPath: ImageConstant.imgCheckmarkGray5001,
        height: getSize(18),
        width: getSize(18),
        margin: getMargin(
          right: 4,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      selectedColor: appTheme.deepOrangeA200,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.blueGray50,
          width: getHorizontalSize(1),
        ),
        borderRadius: BorderRadius.circular(
          getHorizontalSize(22),
        ),
      ),
      onSelected: (value) {},
    );
  }
}
