import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  const Boton(this._titulo, this._color, this._tamanio, this.onTapAccion, {super.key});

  final String _titulo;
  final Color _color;
  final double _tamanio;
  final VoidCallback onTapAccion;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapAccion,
      child: Container(
        alignment: Alignment.center,
        width: _tamanio,
        height: _tamanio,
        color: _color,
        child: Text(_titulo),
      ),
    );
  }
}