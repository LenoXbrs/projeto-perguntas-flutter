import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pont;
  final void Function() reiniciarQuestionario;
    const Resultado(this.pont, this.reiniciarQuestionario, {super.key});

  String get FraseResultado {
    if(pont < 8){
      return 'Parabéns';
    } else if(pont < 12){
      return 'Brabo';
    } else if(pont < 25){
      return 'Brabissimo';
    } else {
      return 'Você é o cara';
    }
  }


  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
              child: Text(
                FraseResultado,
              style: TextStyle(fontSize: 28),
              ),
            ),

            ElevatedButton(
              onPressed: reiniciarQuestionario,
              child: Text('Reiniciar!') ,
                   style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          
        )
              )
      ],
    );
    
  }
}