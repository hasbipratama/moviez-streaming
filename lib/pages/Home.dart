import 'package:flutter/material.dart';
import 'package:moviezstreaming/model/Cardmovie-model.dart';
import 'package:moviezstreaming/theme/home.dart';
import 'package:moviezstreaming/widget/Cardlist.dart';
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
            ],
          ),
        ),
      ],
    ),
  );
}

Widget Main() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 73),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'From Disney',
          style: From,
        ),
        Cardlist(
          Cardlistmodel: Cardmovies_model(
              Imagecard: 'assets/mulan.png',
              Namemovie: 'Mulan Session',
              Genremovie: 'History, War',
              Starmovie: 'assets/3-starsright.png'),
        ),
        Cardlist(
          Cardlistmodel: Cardmovies_model(
              Imagecard: 'assets/beautyandbeast.png',
              Namemovie: 'Beauty & Beast',
              Genremovie: 'Sci-Fiction',
              Starmovie: 'assets/5-stars.png'),
        ),
        Cardlist(
          Cardlistmodel: Cardmovies_model(
              Imagecard: 'assets/thedark.png',
              Namemovie: 'The Dark II',
              Genremovie: 'Horror',
              Starmovie: 'assets/4-starsright.png'),
        ),
        Cardlist(
          Cardlistmodel: Cardmovies_model(
              Imagecard: 'assets/thedarkknight.png',
              Namemovie: 'The Dark Knight',
              Genremovie: 'Heroes',
              Starmovie: 'assets/5-stars.png'),
        ),
        Cardlist(
          Cardlistmodel: Cardmovies_model(
              Imagecard: 'assets/thedarktower.png',
              Namemovie: 'The Dark Tower',
              Genremovie: 'Action',
              Starmovie: 'assets/4-starsright.png'),
        ),
      ],
    ),
  );
}

Widget Footer() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 100),
    child: Center(
      child: Container(
        width: 220,
        height: 50,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0D0846),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Suggest Movie',
            style: Button,
          ),
        ),
      ),
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
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(),
                  Main(),
                  Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
