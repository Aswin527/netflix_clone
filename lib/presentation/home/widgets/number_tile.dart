import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/number_card.dart';
import 'package:netflix_clone/presentation/home/widgets/number_card_title.dart';

class NumberCardTile extends StatelessWidget {
  const NumberCardTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NumberCardTitle(title: "Top 10 TV Shows In India Today"),
        kHeight,
        LimitedBox(
            maxHeight: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return NumberCard(index: index);
              },
              itemCount: 10,
            ))
      ],
    );
  }
}
