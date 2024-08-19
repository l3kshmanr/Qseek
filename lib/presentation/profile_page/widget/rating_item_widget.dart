import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RatingItemWidget extends StatelessWidget {
  const RatingItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 7,
        vertical: 9,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "5 stars",
        style: TextStyle(
          color: const Color.fromARGB(255, 144, 135, 135).withOpacity(1),
          fontSize: 10,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: false,
      backgroundColor: const Color.fromARGB(255, 144, 135, 135),
      selectedColor: Color.fromARGB(255, 0, 0, 0),
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
