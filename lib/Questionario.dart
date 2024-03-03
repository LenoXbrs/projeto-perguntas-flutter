import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {


   final List<Map<String,Object>> perguntas;
   final int perguntaSelecionada;
     final void Function(int) responder;


  
  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
    super.key,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }


  @override
  Widget build(BuildContext context) {

        List<Map<String,Object>> respostas = temPerguntaSelecionada ? perguntas[perguntaSelecionada].cast()['respostas'] : [] ;

        
    return  Column(
          children: [
            Questao(perguntas[perguntaSelecionada].cast()['texto']),
            
            ...respostas.map((resp) => Resposta(resp['texto'] as String, () => responder(int.parse(resp['pontuacao'].toString())))).toList(),
          ],
        );
  }

  
}