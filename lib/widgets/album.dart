import 'package:flutter/material.dart';

class Album extends StatelessWidget {
  const Album({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          AlbumCard(
            image: "assets/images/lilbubblegum.png",
            albumName: "Lilbubblegum",
          ),
          AlbumCard(
            image: "assets/images/happier.png",
            albumName: "Happier Than Ever",
          ),
          AlbumCard(
            image: "assets/images/dont.png",
            albumName: "Don't Smile At Me",
          ),
          AlbumCard(
            image: "assets/images/lilbubblegum.png",
            albumName: "Lilbubblegum",
          ),
          AlbumCard(
            image: "assets/images/happier.png",
            albumName: "Happier Than Ever",
          ),
          AlbumCard(
            image: "assets/images/dont.png",
            albumName: "Don't Smile At Me",
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}

class AlbumCard extends StatelessWidget {
  const AlbumCard({
    super.key,
    required this.image,
    required this.albumName,
  });

  final String image, albumName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.35,
      margin: const EdgeInsets.only(
        left: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 7),
            width: 140,
            height: 135,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            albumName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
