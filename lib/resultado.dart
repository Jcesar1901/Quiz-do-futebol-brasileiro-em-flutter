import 'package:flutter/material.dart';
import 'quiz.dart';

class Resultado extends StatelessWidget {
  final int acertos;

  const Resultado({Key? key, required this.acertos}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Quiz do futebol brasileiro",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          backgroundColor: Colors.green[800],
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/resultado.jpeg'), fit: BoxFit.cover)
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Resultado", 
                  style: TextStyle(fontSize: 20, color:Colors.yellow, fontWeight: FontWeight.w800),
                ),
                if(acertos == 10)
                  Column(
                    children: [
                      const Text(
                        "PARABENS!!!", 
                        style: TextStyle(fontSize: 40, color: Colors.green,fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Você acertou $acertos de 10 perguntas.", 
                        style: const TextStyle(fontSize: 20,  color:Colors.yellow, fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(height: 20),
                    ],
                  )
                else
                  Column(
                    children: [
                      Text(
                        "Você acertou $acertos de 10 perguntas.", 
                        style: const TextStyle(fontSize: 20,  color:Colors.yellow, fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Quiz');
                      }, 
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                        backgroundColor: Colors.blue,
                      ),  
                      child: const Text(
                        "Jogar Novamente", 
                        style: TextStyle(
                          fontSize: 20, 
                          color: Colors.white
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      }, 
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                        backgroundColor: Colors.blue,
                      ),  
                      child: const Text(
                        "Voltar ao Início", 
                        style: TextStyle(
                          fontSize: 20, 
                          color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
