import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: 
          AppBar(
            title: const Center(child: 
              Text( "Quiz do futebol brasileiro",
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 20
                    ),
              ),
            ),
            backgroundColor: Colors.green[800],
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/campo.jpeg'), fit: BoxFit.cover)
        ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                  width: 200,
                  height: 200,
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/Quiz');
                  }, 
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                    backgroundColor: Colors.blue,
                  ),  
                  child: 
                    const Text("Jogar", 
                                style: TextStyle(
                                  fontSize: 20, 
                                  color: Colors.white
                                ),
                    ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}