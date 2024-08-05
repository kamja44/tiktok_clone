import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tiktok Clone',
      theme: ThemeData(primaryColor: const Color(0xFFE9435A)),
      home: Padding(
        padding: const EdgeInsets.all(Sizes.size10),
        child: Container(
          child: const Row(
            children: [
              Text("Hello"),
              Gaps.h20,
              Text("Hell0"),
            ],
          ),
        ),
      ),
    );
  }
}
