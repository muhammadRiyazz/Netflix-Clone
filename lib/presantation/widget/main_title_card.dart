import 'package:flutter/material.dart';
import 'package:netflix_clone/core/sizedbox/sizedbox.dart';
import 'package:netflix_clone/presantation/widget/main_card.dart';
import 'package:netflix_clone/presantation/widget/main_title.dart';

class maintitlecard extends StatelessWidget {
  const maintitlecard({Key? key, required this.title}) : super(key: key);

  final title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titles(title: title),
        ksizedbox2,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => maincard()),
          ),
        ),
      ],
    );
  }
}
