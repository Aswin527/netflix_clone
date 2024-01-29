import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/home/widgets/number_tile.dart';

import '../widgets/main_tile_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.maxFinite,
                  height: _size.height * 0.8,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://image.tmdb.org/t/p/w600_and_h900_bestv2/7lTnXOy0iNtBAdRP3TZvaKJ77F6.jpg"))),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomIconButton(icon: Icons.add, name: "MyList"),
                      _PlayButton(),
                      CustomIconButton(icon: Icons.info, name: "Info")
                    ],
                  ),
                )
              ],
            ),
            const MainTileWidget(
              title: "Released in the Past Year",
            ),
            const MainTileWidget(
              title: "Trending Now",
            ),
            const NumberCardTile(),
            const MainTileWidget(
              title: "Tense Dramas",
            ),
            const MainTileWidget(
              title: "South Indian Drama",
            ),
          ],
        ),
      )),
    );
  }

  TextButton _PlayButton() {
    return TextButton.icon(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(kWhite)),
        onPressed: () => {},
        icon: const Icon(
          Icons.play_arrow,
          color: Colors.black,
        ),
        label: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "Play",
            style: TextStyle(color: Colors.black),
          ),
        ));
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({Key? key, required this.icon, required this.name})
      : super(key: key);

  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(icon), Text(name)],
    );
  }
}
