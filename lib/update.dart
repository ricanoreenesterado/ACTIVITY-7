import 'package:flutter_project/screens/play/flip.dart';
import 'package:flutter_project/cards/front_card.dart';
import 'package:flutter/material.dart';

/*
class system_update_correct extends StatefulWidget {
  const system_update_correct({super.key});

  @override
  State<system_update_correct> createState() => _system_updateState();
}

class _system_updateState extends State<system_update_correct> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/backgroundimg/bac.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/backgroundimg/correction.png'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "YOUR GUESS IS CORRECT",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          ElevatedButton(
              child: const Text("PLAY AGAIN"),
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}

class system_update_wrong extends StatefulWidget {
  const system_update_wrong({super.key});

  @override
  State<system_update_wrong> createState() => _system_update__State();
}

class _system_update__State extends State<system_update_wrong> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/backgroundimg/bac.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/backgroundimg/wrong.png'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "YOUR GUESS IS WRONG",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          ElevatedButton(
              child: const Text("PLAY AGAIN"),
              onPressed: () async {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}

class system_update_wrong_button extends StatefulWidget {
  const system_update_wrong_button({super.key});

  @override
  State<system_update_wrong_button> createState() => _system_update__WState();
}

class _system_update__WState extends State<system_update_wrong_button> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/backgroundimg/bac.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/backgroundimg/caution1.png'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Oops!! YOU CLICKED THE WRONG BUTTON",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          ElevatedButton(
              child: const Text("PLAY AGAIN "),
              onPressed: () async {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
*/