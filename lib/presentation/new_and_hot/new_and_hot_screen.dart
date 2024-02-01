import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/everyone_watching.dart';


class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              title: Text(
                "New & Hot",
                style: GoogleFonts.montserrat(
                    fontSize: 30, fontWeight: FontWeight.w900),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                ),
                kWidth,
                Container(
                  color: Colors.blue,
                  width: 30,
                  height: 30,
                ),
                kWidth
              ],
              bottom: TabBar(
                  indicator: BoxDecoration(
                      color: kWhite, borderRadius: BorderRadius.circular(35)),
                  labelColor: Colors.black,
                  unselectedLabelColor: kWhite,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  unselectedLabelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  isScrollable: true,
                  tabs: [
                    Tab(
                      text: "🍿Coming Soon",
                    ),
                    Tab(
                      text: "👀Everyone's Watching",
                    )
                  ]),
            )),
        body: TabBarView(
          children: [
            _buldComingSoon(),
            _buldEveryOnesWatching(),
          ],
        ),
      ),
    );
  }

  Widget _buldComingSoon() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return ComingSoonWidget();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemCount: 5,
      ),
    );
  }

  Widget _buldEveryOnesWatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return EveryOneWatchingWidget();
      },
    );
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
