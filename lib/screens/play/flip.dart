import 'package:flutter_project/cards/card_back.dart';
import 'package:flutter_project/cards/front_card.dart';
import 'package:flutter_project/screens/play/score.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class flip extends StatefulWidget {
  const flip({
    Key? key,
  }) : super(key: key);

  @override
  State<flip> createState() => _flipState();
}

class _flipState extends State<flip> {
  bool isdesktop(BuildContext) => MediaQuery.of(context).size.width >= 200;
  bool isMobile(BuildContext) => MediaQuery.of(context).size.width < 200;

  bool isFlipped = false;
  int y = 1;
  int x = 0;
  int get imagePath => list[x].keys;
  int get imgpath => list[y].keys;
  int score = 0;
  int tries = 0;
  int chances = 5;
  List<String> guessedCards = [];

  Widget first() {
    return Card(
      key: Key('second'),
      elevation: 5,
      child: Back(),
    );
  }

  Widget second() {
    return Card(
        key: Key('second'),
        elevation: 5,
        child: Front(ValueKey<int>(imagePath), list[x].imgpath));
  }

  Widget third() {
    return Card(
        key: Key('second'),
        elevation: 5,
        child: Front1(key: ValueKey<int>(imgpath), imagePath: list[y].imgpath));
  }

  Widget transition(Widget widget, Animation<double> animation) {
    final flipAnimation = Tween(begin: pi, end: 0.0).animate(animation);
    return AnimatedBuilder(
      animation: flipAnimation,
      child: widget,
      builder: (context, widget) {
        final isUnder = (ValueKey(1) != widget!.key);
        var tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
        tilt *= isUnder ? -1.0 : 1.0;
        final value =
            isUnder ? min(flipAnimation.value, pi / 2) : flipAnimation.value;
        return Transform(
          transform: Matrix4.rotationY(value)..setEntry(3, 0, tilt),
          child: widget,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              scores("lives", "$chances"),
              scores("score ", "$score"),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (isdesktop(BuildContext))
                    Center(
                      child: AnimatedSwitcher(
                        duration: Duration(seconds: 1),
                        switchInCurve: Curves.ease,
                        switchOutCurve: Curves.easeIn,
                        child: isFlipped ? second() : first(),
                        transitionBuilder: transition,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Color.fromARGB(255, 56, 255, 139);
                              return null; // Defer to the widget's default.
                            },
                          ),
                        ),
                        child: const Text("SHUFFLE"),
                        onPressed: () async {
                          setState(() {
                            if (isFlipped = !isFlipped) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      system_update_wrong_button()));
                            }
                          });
                        },
                        //icon: Icon(Icons.shuffle_outlined, size: 24.0, ),
                      ),
                    ),
                  ),
                  Container(
                      height: 250,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: third()),
                ],
              ),
            ),
          ),
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 100,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered) ||
                                states.contains(MaterialState.pressed))
                              return Color.fromARGB(255, 56, 255, 139);
                            return null; // Defer to the widget's default.
                          },
                        ),
                      ),
                      onPressed: () async {
                        setState(() {
                          if (isFlipped = !isFlipped) {
                            tries++;
                            if (list[x].number > list[y].number) {
                              score++;

                              guessedCards.add(list[y].imgpath);
                              if (tries == true) {
                                list.shuffle();
                              }
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      system_update_correct()));
                            } else {
                              chances--;

                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => system_update_wrong()));
                              if (chances == 0) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        system_update_restart()));
                              }
                            }
                          }
                        });
                      },
                      child: High(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 110,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered) ||
                                states.contains(MaterialState.pressed))
                              return Color.fromARGB(255, 56, 255, 139);
                            return null;
                          },
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          if (isFlipped = !isFlipped) {
                            tries++;
                            if (list[x].number == list[y]) {
                              score++;

                              guessedCards.add(list[y].imgpath);
                              if (tries == true) {
                                list.shuffle();
                              }
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      system_update_correct()));
                            } else {
                              chances--;

                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => system_update_wrong()));
                              if (chances == 0) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        system_update_restart()));
                              }
                            }
                          }
                        });
                      },
                      child: Equal(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 100,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered) ||
                                states.contains(MaterialState.pressed))
                              return Color.fromARGB(255, 56, 255, 139);
                            return null; // Defer to the widget's default.
                          },
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          if (isFlipped = !isFlipped) {
                            tries++;
                            if (list[x].number < list[y].number) {
                              score++;

                              if (tries == true) {
                                list.shuffle();
                              }
                              guessedCards.add(list[y].imgpath);
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      system_update_correct()));
                            } else {
                              chances--;

                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => system_update_wrong()));
                              if (chances == 0) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        system_update_restart()));
                              }
                            }
                          }
                        });
                      },
                      child: Low(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: SingleChildScrollView(
                  child: Column(children: [
                    SizedBox(
                      height: 200,
                      width: 550,
                      child: ListView.builder(
                          itemCount: guessedCards.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            int reverseIndex = guessedCards.length - 1 - index;
                            return Container(
                              height: 135,
                              width: 100,
                              margin: EdgeInsets.all(1.5),
                              child: Center(
                                child: Image.asset(
                                  guessedCards[reverseIndex],
                                ),
                              ),
                            );
                          }),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ]));
  }
}

class High extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Align(
        alignment: Alignment(0.2, 0.7),
        child: Container(
          height: 40,
          width: 100,
          child: Text(
            "High",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
              color: Color.fromARGB(255, 14, 6, 6),
            ),
          ),
        ),
      ),
    );
  }
}

class Equal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: 40,
          width: 100,
          child: Text(
            "Equal",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
              color: Color.fromARGB(255, 14, 6, 6),
            ),
          ),
        ),
      ),
    );
  }
}

class Low extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 60,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            height: 40,
            width: 100,
            child: Text(
              "Low",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                color: Color.fromARGB(255, 14, 6, 6),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class system_update_correct extends StatefulWidget {
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
          image: AssetImage("assets/background/card1.jpg"),
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
                    image: AssetImage('assets/background/check.gif'),
                    fit: BoxFit.cover)),
          ),
          ElevatedButton(
              child: const Text("BACK"),
              onPressed: () {
                list.shuffle();
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}

class system_update_wrong extends StatefulWidget {
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
          image: AssetImage("assets/background/card1.jpg"),
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
                    image: AssetImage('assets/background/wrong1.png'),
                    fit: BoxFit.cover)),
          ),
          ElevatedButton(
              child: const Text("BACK"),
              onPressed: () async {
                list.shuffle();
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}

class system_update_wrong_button extends StatefulWidget {
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
          image: AssetImage("assets/background/card1.jpg"),
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
                    image: AssetImage('assets/background/lightning1.png'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Wrong Button!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                  color: Color.fromARGB(255, 3, 2, 2)),
            ),
          ),
          ElevatedButton(
              child: const Text("BACK"),
              onPressed: () async {
                list.shuffle();
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}

class system_update_restart extends StatefulWidget {
  @override
  State<system_update_restart> createState() => _system_update_restart_State();
}

class _system_update_restart_State extends State<system_update_restart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/backgrond/card1.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/background/wrong1.png'),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                " No lives left!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: Color.fromARGB(255, 12, 4, 4),
                ),
              ),
            ),
            ElevatedButton(
                child: const Text("PLAY AGAIN!"),
                onPressed: () async {
                  Navigator.popUntil(context, (route) {
                    return route.settings.name == "/";
                  });
                })
          ],
        ),
      ),
    );
  }
}
