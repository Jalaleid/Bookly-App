// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CostumListViewItem extends StatelessWidget {
  const CostumListViewItem({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.4 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.fill)),
      ),
    );
  }
}
