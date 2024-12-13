import 'package:flutter/material.dart';

class PublicPlaylistItem extends StatelessWidget {
  const PublicPlaylistItem({
    super.key,
    required this.image,
    required this.songName,
    required this.singerName,
    required this.minutes,
  });

  final String image, songName, singerName, minutes;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 58,
          height: 56,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
            ),
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              songName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Text(
              singerName,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 21,
            children: [
              Text(
                minutes,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              const Icon(Icons.more_horiz_rounded),
            ],
          ),
        )
      ],
    );
  }
}
