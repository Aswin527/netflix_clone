import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/search_idle.dart';
import 'package:netflix_clone/presentation/search/widgets/search_result_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              style: TextStyle(color: Colors.white),
            ),
            kHeight,
            // Expanded(child: SearchIdleWidget())
            Expanded(child: SearchResultWidget())
          ],
        ),
      )),
    );
  }
}
