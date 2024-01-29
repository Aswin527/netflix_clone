import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/search_title.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(
          title: "Top Search",
        ),
        kHeight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => TopSearchItem(),
              separatorBuilder: (context, index) => kHeight,
              itemCount: 10),
        ),
      ],
    );
  }
}

class TopSearchItem extends StatelessWidget {
  const TopSearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 100,
          decoration: const BoxDecoration(
              image: DecorationImage(image: NetworkImage(imageUrl))),
        ),
        const SizedBox(
          width: 20,
        ),
        const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )),
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: 25,
          child: CircleAvatar(child: Icon(CupertinoIcons.play_arrow_solid)),
        ),
      ],
    );
  }
}
