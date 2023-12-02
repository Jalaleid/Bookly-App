import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class CostumButton extends StatelessWidget {
  const CostumButton(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius});

  final Color backgroundColor;
  final String text;
  final Color textColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(15))),
        child: Text(
          text,
          style: Styles.titleSmall.copyWith(
              color: textColor, fontWeight: FontWeight.w700, fontSize: 16),
        ),
      ),
    );
  }
}
