import 'package:flutter/material.dart';
import 'dart:math';
import 'flags.dart';

class RollingButton extends StatefulWidget {
  final String text;

  const RollingButton({super.key, required this.text});

  @override
  State<RollingButton> createState() => _RollingButtonState();
}

class _RollingButtonState extends State<RollingButton> {
  var activeImage = 'assets/images/Flag_1.webp';
  var roleFate;

  void rollFate() {
    setState(() {
      roleFate = Random().nextInt(10) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      children: [
        InkWell(
          onTap: rollFate,
          child: Column(
            children: [
              Text(
                widget.text,
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Country where you are born:',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 40),
              if (roleFate != null)
                Image.asset('assets/images/Flag_$roleFate.webp'),
              //const Text('To be continued...', style: TextStyle(fontSize: 10)),
            ],
          ),
        ),
        const SizedBox(height: 80),
        Flags(),
      ],
    );
  }
}
