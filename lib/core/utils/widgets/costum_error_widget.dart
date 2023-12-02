import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class CostumErrorWidget extends StatelessWidget {
  const CostumErrorWidget({super.key, required this.errMessage});
  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: Styles.titleMeduim,
      ),
    );
  }
}
