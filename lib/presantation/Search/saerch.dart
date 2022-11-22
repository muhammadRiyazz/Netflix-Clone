import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/sizedbox/sizedbox.dart';
import 'package:netflix_clone/presantation/Search/wigets/result_page.dart';
import 'package:netflix_clone/presantation/Search/wigets/search_idle.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.3),
              style: TextStyle(color: Colors.white),
              suffixIcon: Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
              prefixIcon: Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
            ),
            ksizedbox2,
            // Expanded(child: const Searchidle()),

            Expanded(child: const Result()),
          ],
        ),
      )),
    );
  }
}
