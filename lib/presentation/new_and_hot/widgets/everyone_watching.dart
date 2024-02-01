import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

import '../../home/widgets/background_widget.dart';

class EveryOneWatchingWidget extends StatelessWidget {
  const EveryOneWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Friends",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const Text(
            "Follows the personal and professional lives of six twenty to thirty year-old friends living in the Manhattan borough of New York City."),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://rogermooresmovienation.files.wordpress.com/2022/02/tall6.jpg"))),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: IconButton(
                    iconSize: 35,
                    onPressed: () {},
                    icon: Icon(Icons.volume_mute_rounded)),
              )
            ],
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomIconButton(icon: Icons.send_rounded, name: "Share"),
            kWidth,
            CustomIconButton(icon: Icons.add, name: "My List"),
            kWidth,
            CustomIconButton(icon: Icons.play_arrow_rounded, name: "Play"),
            kWidth,
          ],
        )
      ],
    );
  }
}
