import 'package:flutter/material.dart';

// ignore: must_be_immutable

class MovieCard extends StatelessWidget {
  String posterUrl;
  String rating;
  String votes;
  String title;
  String genre;
  TextStyle style = const TextStyle(color: Colors.white);
  MovieCard(
      {super.key,
      required this.posterUrl,
      required this.rating,
      required this.title,
      required this.genre,
      required this.votes});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 8.5,
      height: MediaQuery.of(context).size.width / 4.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 8.5,
            height: MediaQuery.of(context).size.width / 5.5,
            decoration: BoxDecoration(
              borderRadius: const BorderRadiusDirectional.only(
                  topStart: Radius.circular(10), topEnd: Radius.circular(10)),
              image: DecorationImage(
                image: AssetImage(posterUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ratingBar(context),
          const SizedBox(
            height: 6,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                genre,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget ratingBar(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 8.5,
      height: 24,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadiusDirectional.only(
              bottomEnd: Radius.circular(10),
              bottomStart: Radius.circular(10))),
      child: Row(children: [
        const Icon(
          Icons.star,
          color: Colors.red,
          size: 18,
        ),
        Text(
          ' 9.6/10',
          style: style,
        ),
        Text(
          '    45K votes ',
          style: style,
        )
      ]),
    );
  }
}
