import 'package:flutter/material.dart';

Widget scores(String x, String scores) {
  return Container(
    height: 70,
    width: 100,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: Colors.transparent, borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        Text(
          x,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 12, 4, 4),
              decoration: TextDecoration.none,
              wordSpacing: 5),
        ),
        Text(
          scores,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 12, 4, 4),
              decoration: TextDecoration.none,
              wordSpacing: 5),
        ),
      ],
    ),
  );
}

Widget chance(String chances) {
  return Container(
    height: 50,
    width: 100,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: Colors.transparent, borderRadius: BorderRadius.circular(20)),
    child: Text(chances,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          color: Color.fromARGB(255, 12, 4, 4),
          decoration: TextDecoration.none,
        )),
  );
}
