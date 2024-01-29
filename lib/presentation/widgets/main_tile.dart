import 'package:flutter/material.dart';

class MainTile extends StatelessWidget {
  const MainTile({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.21,
      width: size.width * 0.32,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/qhPtAc1TKbMPqNvcdXSOn9Bn7hZ.jpg"))),
    );
  }
}
