import 'package:flutter/material.dart';
import 'package:spotify_ui/data/playlist_data.dart';
import 'package:spotify_ui/widgets/album.dart';
import 'package:spotify_ui/widgets/arrow_back_with_text.dart';
import 'package:spotify_ui/widgets/card_playlist.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 240,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(70),
                        bottomRight: Radius.circular(70),
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/banner-billie.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                      left: 20,
                      right: 20,
                    ),
                    child: ArrowBackWithText(
                      titleText: "",
                      colorSquare: const Color(0xFF000000).withOpacity(0.13),
                      iconColor: Colors.white,
                      textColor: Colors.transparent,
                      iconVertColor: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "Billie Eilish",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'PoppinsBold',
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "2 Album, 67 Track",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'PoppinsRegular',
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Lorem Ipsum Dolor Sit Amet, Consecterur\nAdipiscing Elit. Turpis Adipsing Vestibulum Orci\nEnim, Nascetur Vitae",
                      style: TextStyle(
                        fontFamily: 'PoppinsRegular',
                        fontSize: 12,
                        color: Color(0xff838383),
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 30,
                  top: 25,
                  bottom: 15,
                ),
                child: const Text(
                  "Albums",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const Album(),
              Container(
                margin: const EdgeInsets.only(
                  left: 30,
                  top: 25,
                  right: 30,
                  bottom: 15,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Albums",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "See more",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: ListView.separated(
                    itemCount: playlist.length,
                    itemBuilder: (context, index) {
                      return CardPlaylist(
                        titleSong: playlist[index]["title_song"] ?? "",
                        singer: playlist[index]["singer"] ?? "",
                        time: playlist[index]["time"] ?? "",
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 12,
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
