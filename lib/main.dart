import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Etape 2 : Deux textes
              Text('Hello World!'),
              Text('Bienvenue dans Flutter'),

              // Etape 3 : Container stylise
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Text(
                  'Boîte stylisée avec Container',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),

              Text('Mon premier Container'),

              SizedBox(height: 20),

              // Etape 4 : Stack
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(width: 200, height: 200, color: Colors.blue[100]),
                  Icon(Icons.star, size: 100, color: Colors.amber),
                  Text(
                    'Superposé !',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
