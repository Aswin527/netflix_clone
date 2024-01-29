import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/search_title.dart';

const imgURL =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/voHUmluYmKyleFkTu3lOXQG702u.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: "Movies & TV"),
        kHeight,
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          crossAxisCount: 3,
          childAspectRatio: 1.2 / 1.8,
          children: List.generate(20, (index) {
            return MainCard();
          }),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(image: NetworkImage(imgURL)),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
