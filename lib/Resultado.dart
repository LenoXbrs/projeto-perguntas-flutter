import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pont;
    const Resultado(this.pont, {super.key});

  String get FraseResultado {
    if(pont < 8){
      return 'Parabéns';
    } else if(pont < 12){
      return 'Brabo';
    } else if(pont < 16){
      return 'Brabissimo';
    } else {
      return 'Você é o cara';
    }
  }


  @override
  Widget build(BuildContext context) {
    
    return Center(
          child: Text(
            FraseResultado,
          style: TextStyle(fontSize: 28),
          ),
        );
  }
}