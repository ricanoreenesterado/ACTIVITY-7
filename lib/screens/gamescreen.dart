import 'dart:ui';
import 'package:flutter_project/screens/play/flip.dart';
import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  //const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background/card.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Container(
              height: size.height,
              width: size.width,
              child: center_Content(),
            ),
          ],
        ));
  }
}

class center_Content extends StatelessWidget {
  // const center_Content({super.key});

  @override
  Widget build(BuildContext context) {
    Size size1 = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          // logo(),
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Center(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Align(
                    alignment: Alignment(0, 0.7),
                    child: Container(
                      height: 700,
                      width: 600,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/background/card1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),

                      // color: Colors.white.withOpacity(0.2),
                      //borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: <Widget>[
                          /*Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "HIGH-LOW CARD GAME",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 12, 4, 4),
                                decoration: TextDecoration.none,
                                wordSpacing: 5,
                              ),
                            ),
                          ),*/
                          Container(width: size1.width, child: flip()),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class Flipcard extends StatefulWidget {
  final String imgpath;
  const Flipcard({required Key key, required this.imgpath}) : super(key: key);
  final int xy = 0;

  @override
  State<Flipcard> createState() => _FlipcardState();
}

class _FlipcardState extends State<Flipcard> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.imgpath,
      key: ValueKey<String>(widget.imgpath),
      height: 290,
      width: 200,
      fit: BoxFit.fill,
    );
  }
}
