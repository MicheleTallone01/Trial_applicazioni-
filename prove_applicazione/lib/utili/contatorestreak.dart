import 'package:flutter/material.dart';
import 'package:prove_applicazione/utili/bottonStreak.dart';

// Devi rendere stateful questo widget 
class StreakCircle extends StatefulWidget {

  @override // in questo modo creiamo lo stato del nostro oggetto stateful
  State<StreakCircle> createState() => _StreakCircleState();
}

// Costruiamo la classe State del nostro oggetto 
// indicando quello che deve fare 
// considera questa classe come il 'cervello' di StreakCircle 
class _StreakCircleState extends State<StreakCircle> {
  int? starter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      alignment: Alignment.center,
      decoration: BoxDecoration( shape: BoxShape.circle, color: const Color.fromARGB(255, 127, 27, 177),),
      child: Text( '${this.starter} ',   //${widget.streak} è il numero che dobbiamo mettergli in input 
                   style: TextStyle(fontSize: 140 * 0.3,color: Colors.white,fontWeight: FontWeight.bold, ),
                    ),             
                    );
  }
}                          
                               
       
     


