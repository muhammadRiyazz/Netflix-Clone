import 'package:flutter/material.dart';

import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presantation/Downloads/widgets/screen_downloads.dart';
import 'package:netflix_clone/presantation/Fast_laugh/fast_laugh.dart';
import 'package:netflix_clone/presantation/Search/saerch.dart';
import 'package:netflix_clone/presantation/home/home_page.dart';
import 'package:netflix_clone/presantation/main%20page/widgets/navigation_bar.dart';
import 'package:netflix_clone/presantation/new_and_hot/new_and_hot_paag.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final pages = [
    HomePage(),
    NewandHote(),
    FastLaugh(),
    Search(),
    Download(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const Navigationbar(),
        backgroundColor: backgrroundcolor,
        body: SafeArea(
          child: ValueListenableBuilder(
            valueListenable: indexchangenotifier,
            builder: (BuildContext context, int value, Widget? child) {
              return pages[value];
            },
          ),
        ));
  }
}
