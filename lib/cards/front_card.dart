import 'dart:core';
import 'package:flutter/material.dart';

class Front extends StatefulWidget {
  final String imagePath;

  Front(
    Key key,
    this.imagePath,
  ) : super(key: key);

  @override
  State<Front> createState() => _Front();
}

class _Front extends State<Front> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        widget.imagePath,
        key: ValueKey<String>(widget.imagePath),
        height: 250,
        width: 170,
        fit: BoxFit.fill,
      ),
    );
  }
}

class Front1 extends StatefulWidget {
  final String imagePath;

  const Front1({
    required Key key,
    required this.imagePath,
  }) : super(key: key);

  @override
  State<Front1> createState() => _Front1State();
}

class _Front1State extends State<Front1> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          widget.imagePath,
          key: ValueKey<String>(widget.imagePath),
          height: 250,
          width: 170,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}

// ignore: camel_case_types

class deck {
  final int keys;
  final String imgpath;
  final int number;

  deck(this.keys, this.imgpath, this.number);
}

var card_1 = deck(1, 'assets/faces/AS.png', 1);
var card_2 = deck(2, 'assets/faces/AH.png', 1);
var card_3 = deck(3, 'assets/faces/AC.png', 1);
var card_4 = deck(4, 'assets/faces/AD.png', 1);
var card_5 = deck(5, 'assets/faces/2S.png', 2);
var card_6 = deck(6, 'assets/faces/2H.png', 2);
var card_7 = deck(7, 'assets/faces/2C.png', 2);
var card_8 = deck(8, 'assets/faces/2D.png', 2);
var card_9 = deck(9, 'assets/faces/3S.png', 3);
var card_10 = deck(10, 'assets/faces/3H.png', 3);
var card_11 = deck(11, 'assets/faces/3C.png', 3);
var card_12 = deck(12, 'assets/faces/3D.png', 3);
var card_13 = deck(13, 'assets/faces/4S.png', 4);
var card_14 = deck(14, 'assets/faces/4H.png', 4);
var card_15 = deck(15, 'assets/faces/4C.png', 4);
var card_16 = deck(16, 'assets/faces/4D.png', 4);
var card_17 = deck(17, 'assets/faces/5S.png', 5);
var card_18 = deck(18, 'assets/faces/5H.png', 5);
var card_19 = deck(19, 'assets/faces/5C.png', 5);
var card_20 = deck(20, 'assets/faces/5D.png', 5);
var card_21 = deck(21, 'assets/faces/6S.png', 6);
var card_22 = deck(22, 'assets/faces/6H.png', 6);
var card_23 = deck(23, 'assets/faces/6C.png', 6);
var card_24 = deck(24, 'assets/faces/6D.png', 6);
var card_25 = deck(25, 'assets/faces/7S.png', 7);
var card_26 = deck(26, 'assets/faces/7H.png', 7);
var card_27 = deck(27, 'assets/faces/7C.png', 7);
var card_28 = deck(28, 'assets/faces/7D.png', 7);
var card_29 = deck(29, 'assets/faces/8S.png', 8);
var card_30 = deck(30, 'assets/faces/8H.png', 8);
var card_31 = deck(31, 'assets/faces/8C.png', 8);
var card_32 = deck(32, 'assets/faces/8D.png', 8);
var card_33 = deck(33, 'assets/faces/9S.png', 9);
var card_34 = deck(34, 'assets/faces/9H.png', 9);
var card_35 = deck(35, 'assets/faces/9C.png', 9);
var card_36 = deck(36, 'assets/faces/9D.png', 9);
var card_37 = deck(37, 'assets/faces/10S.png', 10);
var card_38 = deck(38, 'assets/faces/10H.png', 10);
var card_39 = deck(39, 'assets/faces/10C.png', 10);
var card_40 = deck(40, 'assets/faces/10D.png', 10);
var card_41 = deck(41, 'assets/faces/JS.png', 11);
var card_42 = deck(42, 'assets/faces/JH.png', 11);
var card_43 = deck(43, 'assets/faces/JC.png', 11);
var card_44 = deck(44, 'assets/faces/JD.png', 11);
var card_45 = deck(45, 'assets/faces/QS.png', 12);
var card_46 = deck(46, 'assets/faces/QH.png', 12);
var card_47 = deck(47, 'assets/faces/QC.png', 12);
var card_48 = deck(48, 'assets/faces/QD.png', 12);
var card_49 = deck(49, 'assets/faces/KS.png', 13);
var card_50 = deck(50, 'assets/faces/KH.png', 13);
var card_51 = deck(51, 'assets/faces/KC.png', 13);
var card_52 = deck(52, 'assets/faces/KS.png', 13);

var list = <deck>[];

addflip() {
  list = [];
  list.add(card_1);
  list.add(card_2);
  list.add(card_3);
  list.add(card_4);
  list.add(card_5);
  list.add(card_6);
  list.add(card_7);
  list.add(card_8);
  list.add(card_9);
  list.add(card_10);
  list.add(card_11);
  list.add(card_12);
  list.add(card_13);
  list.add(card_14);
  list.add(card_15);
  list.add(card_16);
  list.add(card_17);
  list.add(card_18);
  list.add(card_19);
  list.add(card_20);
  list.add(card_21);
  list.add(card_22);
  list.add(card_23);
  list.add(card_24);
  list.add(card_25);
  list.add(card_26);
  list.add(card_27);
  list.add(card_28);
  list.add(card_29);
  list.add(card_30);
  list.add(card_31);
  list.add(card_32);
  list.add(card_33);
  list.add(card_34);
  list.add(card_35);
  list.add(card_36);
  list.add(card_37);
  list.add(card_38);
  list.add(card_39);
  list.add(card_40);
  list.add(card_41);
  list.add(card_42);
  list.add(card_43);
  list.add(card_44);
  list.add(card_45);
  list.add(card_46);
  list.add(card_47);
  list.add(card_48);
  list.add(card_49);
  list.add(card_50);
  list.add(card_51);
  list.add(card_52);
}
