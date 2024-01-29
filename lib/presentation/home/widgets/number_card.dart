import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              height: size.height * 0.21,
              width: 20,
            ),
            Container(
              height: size.height * 0.21,
              width: size.width * 0.32,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/qhPtAc1TKbMPqNvcdXSOn9Bn7hZ.jpg"))),
            ),
          ],
        ),
        Positioned(
          bottom: 10,
          left: -5,
          child: BorderedText(
            strokeColor: kWhite,
            child: Text(
              (index + 1).toString(),
              style: TextStyle(
                  fontSize: 100,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
