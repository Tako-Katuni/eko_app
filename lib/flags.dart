import 'package:flutter/material.dart';

class Flags extends StatelessWidget {
  Flags({super.key});

  //int _count = 0;
  final List<String> listImages = [
    "assets/images/Flag_1.webp",
    "assets/images/Flag_2.webp",
    "assets/images/Flag_3.webp",
    "assets/images/Flag_4.webp",
    "assets/images/Flag_5.webp",
    "assets/images/Flag_6.webp",
    "assets/images/Flag_7.webp",
    "assets/images/Flag_8.webp",
    "assets/images/Flag_9.webp",
    "assets/images/Flag_10.webp",
  ];

  @override
  Widget build(context) {
    return Wrap(
      //body: Center(
      //child: Wrap(
      children: [
        for (var i = 0; i < listImages.length; i++)
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(listImages[i], width: 100, fit: BoxFit.contain),
          ),
      ],
      // ),
      // ),
    );
  }
}
