import 'package:flutter/material.dart';
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFF414141).withOpacity(0.04),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Text(
                      "Now Playing",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'PoppinsBold',
                      ),
                    ),
                    const Icon(Icons.more_vert_rounded),
                  ],
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
                  height: 50,
                ),
                const AudioSlider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
