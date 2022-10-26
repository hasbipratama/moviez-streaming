import 'package:flutter/material.dart';
import 'package:moviezstreaming/model/Cardmovie-model.dart';
import 'package:moviezstreaming/theme/home.dart';
import 'package:moviezstreaming/widget/Cardmovie.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

Widget Header() {
  return SafeArea(
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Moviez',
                  style: Movies,
                ),
                Text(
                  'Watch much easier',
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Image.asset(
                'assets/search.png',
                width: 22,
                height: 22,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Cardmovie(
                Card_model: Cardmovies_model(
                    Imagecard: 'assets/johnwick.png',
                    Namemovie: 'John Wick 4',
                    Genremovie: 'Action, Crime',
                    Starmovie: 'assets/5-stars.png'),
              ),
              Cardmovie(
                Card_model: Cardmovies_model(
                    Imagecard: 'assets/bohaiman.png',
                    Namemovie: 'Bohemian',
                    Genremovie: 'Documentary',
                    Starmovie: 'assets/3-stars.png'),
              ),
              Cardmovie(
                Card_model: Cardmovies_model(
                    Imagecard: 'assets/mulan.png',
                    Namemovie: 'Bohemian',
                    Genremovie: 'Documentary',
                    Starmovie: 'assets/3-stars.png'),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset('assets/bg.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
