import 'package:flutter/material.dart';
import 'package:netflix_clone/core/sizedbox/sizedbox.dart';
import 'package:netflix_clone/presantation/home/widgets/number_card.dart';
import 'package:netflix_clone/presantation/widget/main_title.dart';

class numbercardwidget extends StatelessWidget {
  const numbercardwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titles(title: "Top 10 Tv Shows In India Today"),
        ksizedbox2,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                (index) => Numbercard(
                      index: index,
                    )),
          ),
        ),
      ],
    );
  }
}
