import 'package:flutter/material.dart';
import 'package:flutter_tarea3/app/view/ejemplos/second_page.dart';
import 'package:flutter_tarea3/app/view/ejemplos/third_page.dart';

import 'boton_view.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("First page")),
      ),
      backgroundColor: Colors.amber,
      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Boton("Third", Colors.grey, 100, () =>
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) { return const ThirdView(); },))
              ),
              const SizedBox(width: 100,),
              Boton("Second", Colors.green, 100, () =>
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) { return const SecondView(); },))
              ),
            ],
          )
      ),
    );
  }
}
