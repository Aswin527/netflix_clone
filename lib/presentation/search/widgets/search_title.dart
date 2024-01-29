import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTextTitle extends StatelessWidget {
  final title;
  const SearchTextTitle({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.montserrat(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 23,
      ),
    );
  }
}
