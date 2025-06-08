import 'package:flutter/material.dart';
class PantallaReglas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reglas')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              '1. Solo las casillas rojas dan puntos.\n'
              '2. Las negras restan 10 puntos.\n'
              '3. Amarillas dan premio chico.\n'
              '4. Azules te dan 2 tiros gratis.\n'
              '5. Las verdes pagan doble.',
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/tablero'),
              child: Text('Ir al Tablero'),
            )
          ],
        ),
      ),
    );
  }
}
