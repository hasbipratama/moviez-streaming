import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Moviez',
            style: TextStyle(
              color: Color(0xff0D0846),
              fontSize: 28,
              fontFamily: 'Aveni',
            ),
          ),
        ],
      ),
    );
  }
}
