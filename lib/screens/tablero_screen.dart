import 'package:flutter/material.dart';
class Casilla {
  final int numero;
  final String color;
  final String mensaje;

  Casilla({required this.numero, required this.color, required this.mensaje});
}

final List<Casilla> casillas = [
  Casilla(numero: 1, color: 'rojo', mensaje: 'Avanza 20 puntos'),
  Casilla(numero: 2, color: 'negro', mensaje: 'Restan 10 puntos'),
  Casilla(numero: 3, color: 'verde', mensaje: 'Casa paga doble'),
  // Agrega las 48 aquí...
];

class PantallaTablero extends StatelessWidget {
  Color obtenerColor(String color) {
    switch (color) {
      case 'rojo': return Colors.red;
      case 'negro': return Colors.black;
      case 'amarillo': return Colors.yellow;
      case 'azul': return Colors.blue;
      case 'verde': return Colors.green;
      default: return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tablero')),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6),
        itemCount: casillas.length,
        itemBuilder: (context, index) {
          final casilla = casillas[index];
          return GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text('Casilla ${casilla.numero}'),
                  content: Text(casilla.mensaje),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Cerrar'),
                    )
                  ],
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: obtenerColor(casilla.color),
                border: Border.all(color: Colors.white),
              ),
              child: Center(
                child: Text(
                  casilla.numero.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
