import 'package:flutter/material.dart';

class PantallaAdvertencias extends StatelessWidget {
  const PantallaAdvertencias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Curva decorativa arriba
          ClipPath(
            clipper: CurvaSuperiorClipper(),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 165, 18, 18),
                    Color.fromARGB(255, 90, 22, 22),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          // Contenido centrado
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "⚠ Advertencia ⚠",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Debes acumular al menos 100 puntos para ganar.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 0, 0),
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/reglas');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 253, 253),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 15,
                    ),

                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    foregroundColor: Color.fromARGB(255, 2, 105, 38),
                  ),
                  child: const Text('Ver Reglas'),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: CurvaInferiorClipper(),
              child: Container(
                height: 95,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 165, 18, 18),
                      Color.fromARGB(255, 90, 22, 22),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CurvaSuperiorClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 100,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CurvaInferiorClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, 0);
    path.quadraticBezierTo(size.width / 2, 100, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
