import 'package:flutter/material.dart';

class BottonStreakProvider extends ChangeNotifier{
       int numebertostart = 0; // variabile che tiene traccia della streak, inizializzata con 5 
       bool azzera = false ;  // serve per azzerrare il contatore della streak 
 
    void incrementa() {
      this.numebertostart++; // incrementiamo il numero della streak
      if (azzera == true ) {this.numebertostart = 0;} // if che serve per azzeramento della streaak
      this.azzera = false ; // dopo aver azzerato riporto su false il valore 
      notifyListeners();
       }
     
}
  




