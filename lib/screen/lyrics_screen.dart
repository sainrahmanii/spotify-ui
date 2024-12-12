import 'package:flutter/material.dart';
import 'package:spotify_ui/widgets/arrow_back_with_text.dart';
import 'package:spotify_ui/widgets/audio_player_settings.dart';
import 'package:spotify_ui/widgets/audio_slider.dart';

class LyricsScreen extends StatelessWidget {
  const LyricsScreen({
    super.key,
    required this.judulLagu,
    required this.image,
    required this.singer,
  });

  final String judulLagu, image, singer;

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
                    height: 600,
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 28,
                  right: 28,
                  top: 16,
                  bottom: 28,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                judulLagu,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontFamily: 'PoppinsBold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                singer,
                                style: const TextStyle(
                                  fontFamily: 'PoppinsRegular',
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        const Icon(
                          Icons.favorite_border_rounded,
                          size: 24,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AudioSlider(),
                    const AudioPlayerSettings(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
