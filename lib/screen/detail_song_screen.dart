import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_ui/screen/lyrics_screen.dart';
import 'package:spotify_ui/widgets/arrow_back_with_text.dart';
import 'package:spotify_ui/widgets/audio_player_settings.dart';
import 'package:spotify_ui/widgets/audio_slider.dart';

class DetailSongScreen extends StatelessWidget {
  final String image;
  final String lagu;
  final String penyanyi;
  const DetailSongScreen({
    super.key,
    required this.image,
    required this.lagu,
    required this.penyanyi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 28,
              right: 28,
              top: 16,
            ),
            child: Column(
              children: [
                ArrowBackWithText(
                  titleText: "Now Playing",
                  colorSquare: const Color(0xFF414141).withOpacity(0.04),
                  iconColor: Colors.black,
                  textColor: Colors.black,
                  iconVertColor: const Color(0XFF7D7D7D),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 22),
                  width: MediaQuery.of(context).size.width,
                  height: 370,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 250,
                      child: RichText(
                        overflow: TextOverflow.clip,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "$lagu\n",
                              style: const TextStyle(
                                fontFamily: 'PoppinsBold',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: penyanyi,
                              style: const TextStyle(
                                fontFamily: 'PoppinsRegular',
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.favorite_border_rounded,
                      size: 24,
                      color: Color(0xff6C6C6C),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const AudioSlider(),
                const SizedBox(
                  height: 20,
                ),
                const AudioPlayerSettings(),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LyricsScreen(
                          judulLagu: lagu,
                          image: image,
                        ),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset("assets/svgs/arrow-up.svg"),
                      const Text("Lyrics"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
