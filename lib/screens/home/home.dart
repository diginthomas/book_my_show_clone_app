import 'package:book_my_show_clone/constants/contants.dart';
import 'package:book_my_show_clone/screens/home/widgets/head.dart';
import 'package:book_my_show_clone/screens/home/widgets/home_movie.dart';
import 'package:book_my_show_clone/screens/home/widgets/slides.dart';
import 'package:book_my_show_clone/screens/home/widgets/subhead.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          const Head(),
          SubHead(),
          const Slides(),
          const HomeMovies(),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 6),
            height: MediaQuery.of(context).size.width / 23.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(15),
              image: const DecorationImage(
                image: AssetImage('images/banner/banner9.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 49,
          )
        ],
      ),
    );
  }
}
