import 'package:flutter/material.dart';

class PantallaAdvertencias extends StatelessWidget {
  const PantallaAdvertencias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Advertencias')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Debes acumular al menos 100 puntos para ganar.',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/reglas'),
            child: Text('Ver Reglas'),
          ),
        ],
      ),
    );
  }
}
