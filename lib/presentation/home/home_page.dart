import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/background_widget.dart';
import 'package:netflix_clone/presentation/home/widgets/number_tile.dart';
import '../widgets/main_tile_widget.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(false);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final _size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (context, value, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse ||
                    (AxisDirection.left == true &&
                        AxisDirection.right == true)) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: const [
                      BackgroundWidget(),
                      MainTileWidget(
                        title: "Released in the Past Year",
                      ),
                      MainTileWidget(
                        title: "Trending Now",
                      ),
                      NumberCardTile(),
                      MainTileWidget(
                        title: "Tense Dramas",
                      ),
                      MainTileWidget(
                        title: "South Indian Drama",
                      ),
                    ],
                  ),
                  scrollNotifier.value == true ? TopBarWidget() : kHeight
                ],
              ),
            );
          }),
    ));
  }
}

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: Duration(milliseconds: 5000),
      color: Colors.black.withOpacity(0.3),
      height: size.height * 0.12,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://pngimg.com/uploads/netflix/netflix_PNG8.png"))),
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.cast_connected_outlined)),
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://wallpapers.com/images/high/netflix-profile-pictures-5yup5hd2i60x7ew3.webp"))),
                    ),
                  ),
                ],
              )
            ],
          ),
          kHeight,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text("TV Shows"), Text("Movies"), Text("Categories")],
          )
        ],
      ),
    );
  }
}
