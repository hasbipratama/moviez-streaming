import 'package:flutter/material.dart';
import 'package:moviezstreaming/theme/Cardmovie.dart';
import 'package:moviezstreaming/model/Cardmovie-model.dart';

class Cardmovie extends StatefulWidget {
  Cardmovies_model Card_model;

  Cardmovie({required this.Card_model});

  @override
  State<Cardmovie> createState() => _CardmovieState();
}

class _CardmovieState extends State<Cardmovie> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Container(
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.Card_model.Imagecard,
                width: 300,
                height: 207,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.Card_model.Namemovie,
                      style: Tittle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.Card_model.Genremovie,
                      style: SubTittle,
                    )
                  ],
                ),
                Spacer(),
                Image.asset(
                  widget.Card_model.Starmovie,
                  width: 98,
                  height: 18,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
