import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(109, 33, 119, 1),
        title: Text('NuBank - Cartão virtual'),
      ),
      backgroundColor: Color.fromRGBO(152, 51, 153, .5),
      body: FlipCard(
        key: cardKey,
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        front: Stack(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.all(15),
                height: 250,
                //width: 475,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(109, 33, 119, 1)),
              ),
            ),
            Positioned(
                top: 220,
                right: 25,
                child: Image.asset(
                  'assets/mastercard.png',
                  width: 90,
                )),
            //Aspect ratio
            // Expanded(
            //   child: Align(
            //     alignment: Alignment.centerRight,
            //     child: AspectRatio(
            //       aspectRatio: 5 / 1,
            //       child: Image.asset(
            //         'assets/mastercard.png',
            //         width: 50,
            //       ),
            //     ),
            //   ),
            // ),
            Positioned(
                top: 280,
                left: 50,
                child: Image.asset(
                  'assets/chip.png',
                  width: 60,
                )),
            Positioned(
                top: 295,
                left: 120,
                child: Image.asset(
                  'assets/nfc.png',
                  width: 20,
                  color: Colors.white,
                )),
            Positioned(
                top: 350,
                left: 30,
                child: Image.asset(
                  'assets/nu_logo.png',
                  width: 115,
                  color: Colors.white,
                )),
            Positioned(
                top: 395,
                left: 135,
                child: Text(
                  'NICOLAS G ALMEIDA',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
          ],
        ),
        back: Stack(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.all(15),
                height: 250,
                //width: 475,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(109, 33, 119, 1)),
              ),
            ),
            Positioned(
                top: 225,
                left: 05,
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: 362,
                  height: 80,
                  color: Colors.grey,
                )),
            Positioned(
                top: 400,
                left: 40,
                child: Text(
                  '9999 9999 9999 9999',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
            Positioned(
                top: 380,
                right: 20,
                child: Image.asset(
                  'assets/cirrus.png',
                  width: 90,
                )),
          ],
        ),
      ),
    );
  }
}
