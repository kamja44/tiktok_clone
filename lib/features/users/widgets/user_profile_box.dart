import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class ColumnBox extends StatelessWidget {
  final String boxText;
  final String boxNumber;

  const ColumnBox({
    super.key,
    required this.boxText,
    required this.boxNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          boxNumber,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: Sizes.size18,
          ),
        ),
        Gaps.v1,
        Text(
          boxText,
          style: TextStyle(
            color: Colors.grey.shade500,
          ),
        ),
      ],
    );
  }
}
