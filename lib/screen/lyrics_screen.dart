import 'package:flutter/material.dart';
import 'package:spotify_ui/widgets/arrow_back_with_text.dart';

class LyricsScreen extends StatelessWidget {
  const LyricsScreen({
    super.key,
    required this.judulLagu,
    required this.image,
  });

  final String judulLagu, image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 700,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          image,
                        ),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 28,
                      right: 28,
                      top: 16,
                    ),
                    child: ArrowBackWithText(
                      titleText: judulLagu,
                      colorSquare: Colors.black.withOpacity(0.13),
                      iconColor: Colors.white,
                      textColor: Colors.white,
                      iconVertColor: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
