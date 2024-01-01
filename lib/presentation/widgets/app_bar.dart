import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: GoogleFonts.montserrat(
                fontSize: 30, fontWeight: FontWeight.w900),
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
        ),
        kWidth,
        Container(
          color: Colors.blue,
          width: 30,
          height: 30,
        ),
        kWidth
      ],
    );
  }
}
