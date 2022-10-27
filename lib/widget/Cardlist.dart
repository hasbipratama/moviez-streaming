import 'package:flutter/material.dart';
import 'package:moviezstreaming/theme/Cardmovie.dart';
import 'package:moviezstreaming/model/Cardmovie-model.dart';

class Cardlist extends StatefulWidget {
  Cardmovies_model Cardlistmodel;

  Cardlist({required this.Cardlistmodel});

  @override
  State<Cardlist> createState() => _CardlistState();
}

class _CardlistState extends State<Cardlist> {
  @override
  int index = 1;

  Widget build(BuildContext context) {
    index++;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: EdgeInsets.only(
          top: index == 1 ? 0 : 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.Cardlistmodel.Imagecard,
                width: 100,
                height: 120,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.Cardlistmodel.Namemovie,
                    style: Tittle,
                  ),
                  Text(
                    widget.Cardlistmodel.Genremovie,
                    style: SubTittle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    widget.Cardlistmodel.Starmovie,
                    width: 98,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
