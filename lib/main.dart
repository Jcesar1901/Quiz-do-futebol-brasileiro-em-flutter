import 'package:flutter/material.dart';
import 'package:quiz/home_page.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/resultado.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
        routes:{
           '/': (context) => const HomePage(),
           '/Quiz' : (context) => const Quiz(),
           '/Resultado': (context) { final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
          final acertos = args['acertos'] as int;
          return Resultado(acertos: acertos);
      },
    },
    );
  }
}


