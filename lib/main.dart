import 'package:flutter/material.dart';
import 'package:netflix_clone/presantation/main%20page/widgets/screen_main_page.dart';

void main() {
  runApp(const Netflix());
}

class Netflix extends StatelessWidget {
  const Netflix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(backgroundColor: Colors.black.withOpacity(0.0)),
          iconTheme: const IconThemeData(color: Colors.white),
          scaffoldBackgroundColor: Colors.black,
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
              bodyText1: TextStyle(color: Colors.white),
              bodyText2: TextStyle(color: Colors.white))),
      home: MainPage(),
    );
  }
}
