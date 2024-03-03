

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/Questionario.dart';
import 'package:projeto_perguntas/Resultado.dart';


main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
var _perguntaSelecionada = 0;
var _pontuacaoTotal = 0;
    final List<Map<String,Object>> _perguntas = [
      {
        'texto' : 'Qual sua cor favorita ?',
        'respostas' : [
          {'texto': 'Preto', 'pontuacao' : 6},
          {'texto': 'Azul', 'pontuacao' : 5},
          {'texto': 'Vermelho','pontuacao' :8},
          {'texto': 'Rosa','pontuacao' : 0},
          ]
      },
          {
        'texto' : 'Qual seu animal favorito ?',
        'respostas' : [
          {'texto':'Ratel','pontuacao' : 10},
          {'texto': 'Tigre','pontuacao' : 6},
          {'texto':'Leao','pontuacao' :3},
          {'texto': 'Capivara','pontuacao' :9}
        ]
      },
          {
        'texto' : 'Qual seu anime favorito ?',
        'respostas' : [
          {'texto': 'AOT','pontuacao' : 10},
          {'texto': 'FMA','pontuacao' : 7}
        , {'texto': 'DBZ','pontuacao' : 9}
        , {'texto': 'SAO','pontuacao' : 10}
        ]
      },
  
    ];
  void _responder(int pontuacao){
    if(temPerguntaSelecionada){
        setState(() {
       _perguntaSelecionada++;
       _pontuacaoTotal += pontuacao;
    });
    }
  }

  void _reiniciarQuestionario(){
    setState(() {
      _perguntaSelecionada =0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }
   @override
  Widget build(BuildContext context) {




// for(String textoResp in 
//          respostas as List){
//       widgets.add(Resposta(textoResp,_responder));
 //          }

   
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas',
          style: TextStyle(color: Colors.white)),
          
          backgroundColor: Colors.blue,
          centerTitle: true,
     
        ),
        body: temPerguntaSelecionada ? Questionario(
          perguntas: _perguntas,
          perguntaSelecionada: _perguntaSelecionada,
          responder: _responder,
        ) 
         :  Resultado(_pontuacaoTotal,_reiniciarQuestionario),
      ),
    );
  }
}


class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
  

  


 

}