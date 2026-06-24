import 'package:flutter/material.dart';

import '../utils/constants.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({super.key, required this.title, required this.value});
  final String title;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(color: kDarkGrayColor, fontSize: 14)),
        Text(
          value.toString(),
          style: TextStyle(
            color: kBlackColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
