import 'package:flutter/material.dart';

class AudioSlider extends StatefulWidget {
  const AudioSlider({super.key});

  @override
  State<AudioSlider> createState() => _AudioSliderState();
}

class _AudioSliderState extends State<AudioSlider> {
  double currentValue = 145.0; // Detik saat ini (contoh)
  double maxValue = 242.0; // Durasi total dalam detik (contoh)

  // Fungsi untuk mengonversi detik menjadi format menit:detik
  String formatTime(double seconds) {
    int minutes = seconds ~/ 60; // Hitung menit
    int remainingSeconds = (seconds % 60).toInt(); // Hitung sisa detik
    return '${minutes}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Slider(
          value: currentValue,
          min: 0,
          max: maxValue,
          onChanged: (value) {
            setState(() {
              currentValue = value;
            });
          },
          activeColor: const Color(0XFF434343), // Warna garis aktif
          inactiveColor:
              Colors.black.withOpacity(0.3), // Warna garis tidak aktif
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              formatTime(currentValue), // Menggunakan fungsi formatTime
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              formatTime(maxValue), // Menggunakan fungsi formatTime
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
