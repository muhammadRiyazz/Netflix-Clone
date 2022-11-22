import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/sizedbox/sizedbox.dart';
import 'package:netflix_clone/presantation/home/home_page.dart';
import 'package:netflix_clone/presantation/new_and_hot/widgets/commingsoon_tabview.dart';
import 'package:netflix_clone/presantation/new_and_hot/widgets/everyonewidget.dart';
import 'package:netflix_clone/presantation/widget/app_bar_widget.dart';

class NewandHote extends StatelessWidget {
  const NewandHote({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            const Icon(
              Icons.cast,
              color: kcolorwhite,
              size: 30,
            ),
            ksizedbox,
            Container(
              height: 20,
              width: 30,
              color: Colors.amber,
            ),
          ],
          title: Text(
            'New & Hot',
            style: const TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
          ),
          bottom: TabBar(
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              unselectedLabelColor: kcolorwhite,
              labelColor: backgrroundcolor,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: kcolorwhite),
              tabs: const [
                Tab(
                  text: '🍿 Coming soon',
                ),
                Tab(
                  text: '👀 Everyone watching',
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            MyTabBarView1(),
            EveryoneWidget(),
          ],
        ),
      ),
    );
  }
}
