import 'dart:html';
import 'package:flutter_project/cards/front_card.dart';
import 'package:flutter_project/screens/gamescreen.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(myApp());

  addflip();
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background/card3.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: RaisedButton(
          textColor: Colors.black,
          color: Color.fromARGB(255, 231, 40, 34),
          onPressed: () {
            setState(() {
              list.shuffle();
            });
            Next(context);
          },
          child: Text('PLAY',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                //side: BorderSide(color: Colors.red, width: 5),
              )),
        ),
      ),
    );
  }
}
/* PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem<MenuItem>(
        value: item,
        child: Row(
          children: [
            Icon(item.icon, color: Colors.black, size: 20),
            const SizedBox(width: 12),
            Text(item.text),
          ],
        ),
      );*/

/*void onSelected(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.itemSettings:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SettingsPage()),
        );
        break;
    }
  }*/

void Next(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => screen2()));
}

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HIGH-LOW CARD GAME',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help, color: Colors.black),
            tooltip: 'help?',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Help()),
              );
            },
          ),
        ],
        backgroundColor: Color.fromARGB(255, 56, 255, 139),
      ),
      body: Container(
        child: homescreen(),
      ),
    );
  }
}

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Help', style: TextStyle(color: Colors.black)),
          backgroundColor: Color.fromARGB(255, 56, 255, 139),
        ),
        body: Center(
            /*child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go Back', style: TextStyle(color: Colors.black)),
          ),*/
            child: Text(
                ' Welcome to High-Low Card Game \n The player should guess if the next card is less than, \n equal to, or greater than the current card. \n There were only be five(5) chances or lives, \n so THINK WISELY! \n GOODLUCK!',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold))));
  }
}
