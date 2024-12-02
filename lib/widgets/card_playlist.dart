import 'package:flutter/material.dart';

class CardPlaylist extends StatelessWidget {
  final String titleSong;
  final String singer;
  final String time;
  const CardPlaylist({
    super.key,
    required this.titleSong,
    required this.singer,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 12,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xffE6E6E6),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow_rounded,
                ),
                color: const Color(0xff555555),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleSong,
                  style: const TextStyle(
                    fontFamily: "PoppinsBold",
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(singer),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,
          children: [
            Text(
              time,
              style: const TextStyle(
                fontFamily: "PoppinsRegular",
                fontSize: 15,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_rounded,
                color: Color(0xffB4B4B4),
              ),
            )
          ],
        )
      ],
    );
  }
}
