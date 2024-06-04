import 'package:flutter/material.dart';
import 'package:flutter_tarea3/app/view/ejemplos/third_page.dart';

import 'boton_view.dart';

class SecondView extends StatelessWidget {
  const SecondView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Second page")),
      ),
      backgroundColor: Colors.lightBlue,
      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Boton("Volver", Colors.grey, 100, () => Navigator.of(context).pop()),
              const SizedBox(width: 100,),
              Boton("Third", Colors.purple, 100, () =>
                Navigator.of(context).push(MaterialPageRoute(builder: (context) { return const ThirdView(); },))
              ),
            ],
          )
      ),
    );
  }
}

