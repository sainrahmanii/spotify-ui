import 'package:flutter/material.dart';
import 'package:spotify_ui/data/song_data.dart';
import 'package:spotify_ui/screen/detail_song_screen.dart';
import 'package:spotify_ui/widgets/card_song.dart';

class ListViewSong extends StatelessWidget {
  const ListViewSong({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: song.length,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(right: 14),
      itemBuilder: (context, index) {
        return CardSong(
          image: song[index]['image'] ?? '-',
          lagu: song[index]['judul-lagu'] ?? '-',
          penyanyi: song[index]['penyanyi'] ?? '-',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailSongScreen(
                  image: song[index]["image"]!,
                  lagu: song[index]["judul-lagu"]!,
                  penyanyi: song[index]["penyanyi"]!,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
