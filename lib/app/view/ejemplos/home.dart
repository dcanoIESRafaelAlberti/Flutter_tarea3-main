import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

// Visibilidad: private
// Si lleva delante el carácter guión bajo "_" se trata de una clase privada
// También en variables y métodos
class _HomeViewState extends State<HomeView> {
  String saludo = "Hola, estamos en la sesión ";
  int contador = 1;

  @override
  void initState() {
    super.initState();
    print("Se inicia el estado de la pantalla");
  }

  @override
  Widget build(BuildContext context) {
    print("Se pinta la pantalla");
    return Scaffold(
        body: Center(
          child: Text("$saludo $contador"),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                if (contador > 1) {
                  contador--;
                  setState(() {});
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: 75,
                height: 75,
                color: Colors.amber,
                child: const Text("Back"),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            GestureDetector(
              onTap: () {
                if (contador < 5) {
                  contador++;
                  setState(() {});
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: 75,
                height: 75,
                color: Colors.amber,
                child: const Text("Next"),
              ),
            ),
          ],
        ));
  }

  @override
  void dispose() {
    super.dispose();
    print("La pantalla desaparece");
  }
}
