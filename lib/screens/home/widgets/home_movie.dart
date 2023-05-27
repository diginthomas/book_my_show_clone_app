import 'package:book_my_show_clone/common_widgets/moviecard.dart';
import 'package:book_my_show_clone/constants/contants.dart';
import 'package:flutter/material.dart';

class HomeMovies extends StatelessWidget {
  const HomeMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 5.8, vertical: 20),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recommended Movies',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff333333)),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See All >',
                    style: TextStyle(color: Color(0xffDC3558)),
                  ))
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MovieCard(
              posterUrl: vikram,
              rating: '9.6/10',
              votes: '456K',
              title: 'Vikram (Tamil)',
              genre: "Action/Drama",
            ),
            MovieCard(
              posterUrl: minal,
              rating: '9.1/10',
              votes: '46K',
              title: 'Minnal Murali',
              genre: 'Comedy',
            ),
            MovieCard(
              posterUrl: flash,
              rating: '9.7/10',
              votes: '766K',
              title: 'The Flash (English)',
              genre: "Superhero",
            ),
            MovieCard(
              posterUrl: tomb,
              rating: '7.6/10',
              votes: '56K',
              title: "Tomb Raider (English)",
              genre: "Action/Drama",
            ),
            MovieCard(
              posterUrl: mahan,
              rating: '8.6/10',
              votes: '156K',
              title: "Mahaan (Tamil)",
              genre: "Action/Comedy",
            ),
          ],
        )
      ]),
    );
  }
}
