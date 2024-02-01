import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

import '../../home/widgets/background_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          color: Colors.transparent,
          height: size.height * 0.50,
          width: size.width * 0.1,
          child: Column(
            children: [
              Text("FEB"),
              Text(
                "11",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width * 0.9,
          height: size.height * 0.50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://rogermooresmovienation.files.wordpress.com/2022/02/tall6.jpg"))),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Tall Girl 2",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        CustomIconButton(
                            icon: Icons.notifications, name: "Remind Me"),
                        kWidth,
                        CustomIconButton(icon: Icons.info_outline, name: "Info")
                      ],
                    ),
                  ],
                ),
              ),
              const Text("Coming On Friday"),
              kHeight,
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://pngimg.com/uploads/netflix/netflix_PNG8.png"))),
                  ),
                  Text("FILM")
                ],
              ),
              kHeight,
              Text(
                "Tall Girl 2",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                  "Landing the lead of school musicals is a dream come true for Jodi, until the pressure sends her confidance -- and her relationship -- into a tailspin.")
            ],
          ),
        ),
      ],
    );
  }
}
