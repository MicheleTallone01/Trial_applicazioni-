import 'package:flutter/material.dart';

class BottonStreak extends StatefulWidget {
      @override
      State<BottonStreak> createState() => _BottonStreakState(); 
}

class _BottonStreakState extends State<BottonStreak> {
  static int startnumber = 5 ; 

    void incrementa() {
    setState(() {
      startnumber++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color.fromARGB(255, 127, 27, 177),
      ),
      child: Text( '18',   //${widget.streak} è il numero che dobbiamo mettergli in input 
        style: TextStyle(
          fontSize: 140 * 0.3,
          color: Colors.white,
          fontWeight: FontWeight.bold,)
          )
          );
  } 
}





