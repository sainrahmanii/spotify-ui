import 'package:flutter/material.dart';

class CardSong extends StatelessWidget {
  final String image;
  final String lagu;
  final String penyanyi;
  final Function onTap;
  const CardSong({
    super.key,
    required this.image,
    required this.lagu,
    required this.penyanyi,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
        padding: const EdgeInsets.only(right: 10),
        width: 147,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            const SizedBox(
              height: 13,
            ),
            Text(
              lagu,
              maxLines: 1,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                fontFamily: 'PoppinsBold',
                fontSize: 16,
                color: Color(0xff000000),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              penyanyi,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                fontFamily: 'PoppinsRegular',
                color: Color(0xff000000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
