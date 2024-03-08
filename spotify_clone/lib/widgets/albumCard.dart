import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/app_theme.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  const AlbumCard({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: image,
          width: 120,
          height: 120,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: TextStyle(color: apptheme.terinaryColor),
        )
      ],
    );
  }
}
