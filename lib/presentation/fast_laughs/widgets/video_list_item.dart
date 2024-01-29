import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off_rounded,
                      size: 30,
                    )),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ptpr0kGAckfQkJeJIt8st5dglvd.jpg"),
                    ),
                    kHeight,
                    VideoActionsWidget(
                        icon: Icons.emoji_emotions_outlined, title: "LOL"),
                    VideoActionsWidget(icon: Icons.add, title: "My List"),
                    VideoActionsWidget(icon: Icons.share, title: "Share"),
                    VideoActionsWidget(
                        icon: Icons.play_arrow_rounded, title: "Play")
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionsWidget(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
