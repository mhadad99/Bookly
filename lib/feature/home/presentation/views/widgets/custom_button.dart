import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    this.borderRadius,
    this.textColor,
  });
  final String text;
  final Color backgroundColor;
  final Color? textColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16))),
      child: Text(
        text,
        style: Styles.textStyle18.copyWith(color: textColor),
      ),
    );
  }
}
