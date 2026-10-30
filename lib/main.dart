import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Atelier Flutter 02'),
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Etape 2 : Deux textes
                Text('Hello World!'),
                Text('Bienvenue dans Flutter'),

                // Etape 3 : Container personnalise
                Container(
                  margin: EdgeInsets.all(24),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Text(
                    'Boîte stylisée avec Container',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),

                Text('Mon premier Container'),

                SizedBox(height: 25),

                // Etape 4 : Stack
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(width: 200, height: 200, color: Colors.blue[100]),
                    Icon(Icons.star, size: 100, color: Colors.amber),
                    Text(
                      'Superposé !',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                // Etape 5 : Row avec 4 icones
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.home, color: Colors.blue, size: 40),
                    Icon(Icons.star, color: Colors.amber, size: 40),
                    Icon(Icons.settings, color: Colors.grey, size: 40),
                    Icon(Icons.favorite, color: Colors.red, size: 40),
                  ],
                ),

                SizedBox(height: 30),

                // Etape 6 : Deuxieme Column
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Titre principal',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Sous-titre ou description',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 15),
                    Icon(Icons.thumb_up, color: Colors.green, size: 55),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
