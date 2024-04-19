import 'package:flutter/material.dart';
import 'quiz_dados.dart';
import 'resultado.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int perguntaNumero = 1;
  int acertos = 0;
  int erros = 0;

  @override
  Widget build(BuildContext context) {
    void respondeu(int respostaNumero){
      setState(() {
        if(quiz[perguntaNumero-1]["alternativa_correta"] == respostaNumero){
          acertos++;
          debugPrint('total de acertos $acertos');

        }else{
          erros++;
          debugPrint("total de erros $erros");        
        }
        if(perguntaNumero == 10){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Resultado(acertos:acertos)));
        }else{
          perguntaNumero++;
        }
      });
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Quiz do futebol brasileiro",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        backgroundColor: Colors.green[800],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/bola.jpeg'), fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Text("Pergunta $perguntaNumero de 10",
                      style: const TextStyle(
                        fontSize: 20,
                      )),
                ),
                Text(
                  "Pergunta: ${quiz[perguntaNumero - 1]["Pergunta"]}",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                //Botão referente à Resposta 1
                ElevatedButton(
                  onPressed: () {
                    debugPrint("pressionado.");
                    respondeu(0);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    backgroundColor: Colors.blue,
                  ),
                  //Texto do botão 1
                  child: Text(
                    "${quiz[perguntaNumero - 1]["Respostas"][0]}",
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                //Botão referente à Resposta 2
                ElevatedButton(
                  onPressed: () {
                    debugPrint("pressionado.");
                    respondeu(1);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    backgroundColor: Colors.blue,
                  ),
                  //Texto do botão 2
                  child: Text(
                    "${quiz[perguntaNumero - 1]["Respostas"][1]}",
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                //Botão referente à Resposta 3
                ElevatedButton(
                  onPressed: () {
                    debugPrint("pressionado.");
                    respondeu(2);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    backgroundColor: Colors.blue,
                  ),
                  //Texto do botão 3
                  child: Text(
                    "${quiz[perguntaNumero - 1]["Respostas"][2]}",
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                //Botão referente à Resposta 4
                ElevatedButton(
                  onPressed: () {
                    debugPrint("pressionado.");
                    respondeu(3);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    backgroundColor: Colors.blue,
                  ),
                  //Texto do botão 4
                  child: Text(
                    "${quiz[perguntaNumero - 1]["Respostas"][3]}",
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                //Botão referente à Resposta 5
                ElevatedButton(
                  onPressed: () {
                    debugPrint("pressionado.");
                    respondeu(4);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    backgroundColor: Colors.blue,
                  ),
                  //Texto do botão 5
                  child: Text(
                    "${quiz[perguntaNumero - 1]["Respostas"][4]}",
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
