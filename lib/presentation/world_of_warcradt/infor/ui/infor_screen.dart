import 'package:flutter/material.dart';
class InForScreen extends StatefulWidget {
  @override
  _InForScreenState createState() => _InForScreenState();
}

class _InForScreenState extends State<InForScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                child:  Image.asset(
                  'assets/images/background.jpg',
                ),
              ),
              Positioned(
                child:  Image.asset(
                  'assets/images/wowlogo.png',
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 5)),
          Text(
            'BROWSE ALL WOW® GAMES',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigoAccent),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            'BRAVE THE BEYOND',
            style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'With a single act of destruction, '
                  'Sylvanas Windrunner has ripped open the way to the afterlife. '
                  'Azeroth’s staunchest defenders have been dragged into all-consuming darkness. '
                  'An ancient force of death threatens to break its bonds and unravel reality.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white ,fontSize: 10.0),
            ),
          ),
          Image.asset('assets/images/pet.jfif', height: 150, width: 400,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'You may need to acquire an extra skill to tame pets from these families. '
                  'Click on a Pet to see how you can obtain it.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white ,),
            ),
          ),
        ],
      ),
    );
  }
}
