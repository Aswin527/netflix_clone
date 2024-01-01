import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/app_bar.dart';

class Downloads extends StatelessWidget {
  Downloads({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final _widgetList = [Section_1(), Section_2(), Section_3()];

    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              title: "Downloads",
            )),
        body: ListView.separated(
          itemBuilder: (context, index) => _widgetList[index],
          separatorBuilder: (context, index) => SizedBox(
            height: 20,
          ),
          itemCount: _widgetList.length,
        ),
      ),
    );
  }
}

class Section_1 extends StatelessWidget {
  const Section_1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [Icon(Icons.settings), Text('Smart Downloads')],
        ),
        kHeight,
        Text(
          'Introducing Downloads for You',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        kHeight,
        Text(
          'We will download movies and shows just for you, so you will always have something to watch',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}

class Section_2 extends StatelessWidget {
  Section_2({
    super.key,
  });

  final List<String> imageList = [
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ptpr0kGAckfQkJeJIt8st5dglvd.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/qCTqXIdbvxswbs36VJC5caIViIl.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/voHUmluYmKyleFkTu3lOXQG702u.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.width,
      color: Colors.black,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            radius: size.width * 0.30,
            backgroundColor: Colors.grey,
          ),
          ImageProviderWidget(
              angle: 20,
              imageList: imageList[0],
              margin: EdgeInsets.only(left: 130)),
          ImageProviderWidget(
              angle: -20,
              imageList: imageList[1],
              margin: EdgeInsets.only(right: 130)),
          ImageProviderWidget(
            angle: 0,
            imageList: imageList[2],
            margin: EdgeInsets.all(0),
          )
        ],
      ),
    );
  }
}

class Section_3 extends StatelessWidget {
  const Section_3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: Colors.blueAccent,
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set Up',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        MaterialButton(
          color: kWhite,
          onPressed: () {},
          child: Text(
            'See what you can download',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class ImageProviderWidget extends StatelessWidget {
  const ImageProviderWidget(
      {super.key,
      required this.angle,
      required this.imageList,
      required this.margin});

  final double angle;
  final String imageList;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * 0.35,
        height: size.width * 0.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: NetworkImage(imageList))),
      ),
    );
  }
}
