import 'package:flutter/material.dart';

import 'boton_view.dart';

class ThirdView extends StatelessWidget {
  const ThirdView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Third page")),
      ),
      backgroundColor: Colors.lightGreenAccent,
      body: Center(
          child: Boton("Volver", Colors.grey, 100, () => Navigator.of(context).pop()),
      ),
    );
  }
}
