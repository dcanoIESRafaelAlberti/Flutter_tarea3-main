
import 'package:flutter/material.dart';

class HeaderView extends StatelessWidget {
  const HeaderView(this.textTitle, {super.key});

  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        color: const Color(0x4DFFE84A),
        alignment: Alignment.center,
        child: Text(
          textTitle,
          style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Color(0xFF4A4A4A)),
        )
    );
  }
}

class BodyView extends StatelessWidget {
  const BodyView(this.player1Play, this.player2Play, {super.key});

  final String player1Play;
  final String player2Play;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _GamePlay(player1Play, 150, "Player 1"),
        const SizedBox(width: 15,),
        _GamePlay(player2Play, 150, "Player 2"),
      ],
    );
  }
}

class _GamePlay extends StatelessWidget {
  const _GamePlay(this.play, this.imageSize, this.imageText);

  final String play;
  final double imageSize;
  final String imageText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/$play.png", width: imageSize, height: imageSize),
        Text(
          imageText,
          style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 25,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

class BottomView extends StatelessWidget {
  const BottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(
          "assets/images/shape.png",
          width: 141,
          height: 129,
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  const Button(this.buttonText, this.onTapAction, {super.key});

  final String buttonText;
  final VoidCallback onTapAction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapAction,
      child: Container(
        width: 200,
        height: 50,
        color: const Color(0xFFD9D9D9),
        alignment: Alignment.center,
        child: Text(
          buttonText,
          style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF5B5B5B)),
        ),
      ),
    );
  }
}