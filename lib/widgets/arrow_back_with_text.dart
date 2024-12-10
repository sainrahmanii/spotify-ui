import 'package:flutter/material.dart';

class ArrowBackWithText extends StatelessWidget {
  const ArrowBackWithText({
    super.key,
    required this.titleText,
    required this.colorSquare,
    required this.iconColor,
    required this.textColor,
    required this.iconVertColor,
  });

  final String titleText;
  final Color colorSquare, iconColor, textColor, iconVertColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 12,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: colorSquare,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 20,
              color: iconColor,
            ),
          ),
        ),
        Expanded(
          child: Text(
            titleText,
            maxLines: 1,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: 'PoppinsBold',
              color: textColor,
            ),
          ),
        ),
        Icon(
          Icons.more_vert_rounded,
          color: iconVertColor,
        ),
      ],
    );
  }
}
