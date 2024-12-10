import 'package:flutter/material.dart';

class AudioPlayerSettings extends StatelessWidget {
  const AudioPlayerSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 30,
      children: [
        Image.asset(
          "assets/images/repeat.png",
          width: 26,
        ),
        Image.asset(
          "assets/images/previous.png",
          width: 26,
        ),
        Container(
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            color: const Color(0xff42C83C),
            borderRadius: BorderRadius.circular(36),
          ),
          child: const Icon(
            Icons.pause_rounded,
            color: Colors.white,
            size: 32,
          ),
        ),
        Image.asset(
          "assets/images/next.png",
          width: 26,
        ),
        Image.asset(
          "assets/images/shuffle.png",
          width: 26,
        ),
      ],
    );
  }
}
