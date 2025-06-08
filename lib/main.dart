import 'package:flutter/material.dart';
import 'screens/bienvenida_screen.dart';
import 'screens/advertencias_screen.dart';
import 'screens/reglas_screen.dart';
import 'screens/tablero_screen.dart';

void main() {
  runApp(const JuegoMesaApp());
}

class JuegoMesaApp extends StatelessWidget {
  const JuegoMesaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Juego de Mesa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const BienvenidaScreen(),
        '/advertencias': (context) =>  PantallaAdvertencias(),
        '/reglas': (context) =>  PantallaReglas(),
        '/tablero': (context) =>  PantallaTablero(),
      },
    );
  }
}
