import 'package:flutter/material.dart';
import 'rolling_button.dart';

class BackgroundContainer extends StatelessWidget {
  //initialization
  const BackgroundContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      height: double.infinity,
      color: Color.fromARGB(192, 252, 119, 30),
      child: SafeArea(
        child: Center(child: RollingButton(text: 'Roll Your Fate')),
      ),
    );
  }
}
