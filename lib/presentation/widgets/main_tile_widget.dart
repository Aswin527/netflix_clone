import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/main_tile.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';

class MainTileWidget extends StatelessWidget {
  const MainTileWidget({
    super.key,required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kHeight,
        LimitedBox(
            maxHeight: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 10,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return const MainTile();
              },
              itemCount: 10,
            ))
      ],
    );
  }
}
