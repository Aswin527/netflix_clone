import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/downloads/downloads.dart';
import 'package:netflix_clone/presentation/fast_laughs/fast_laughs_screen.dart';
import 'package:netflix_clone/presentation/home/home_page.dart';
import 'package:netflix_clone/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_clone/presentation/new_and_hot/new_and_hot_screen.dart';
import 'package:netflix_clone/presentation/search/search_screen.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final _pages = [
    HomeScreen(),
    NewAndHotScreen(),
    FastLaughsScreen(),
    SearchScreen(),
    Downloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, _) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: BottomNavigationWid(),
    );
  }
}
