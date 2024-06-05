import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tarea3/app/view/util_views.dart';

class ResultPage extends StatelessWidget {
  ResultPage({super.key});

  final List<String> gamePlay = ["rock", "paper", "scissors"];

  @override
  Widget build(BuildContext context) {
    //Random plays
    int player1Play = Random().nextInt(3);
    int player2Play = Random().nextInt(3);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const HeaderView("Well played!!"),
          const SizedBox(height: 25,),
          BodyView(gamePlay[player1Play], gamePlay[player2Play]),
          playerWinner(gamePlay[player1Play], gamePlay[player2Play]),
          Button("BACK", () => Navigator.of(context).pop()),
          const BottomView(),
        ],
      ),
    );
  }

  Widget playerWinner(String player1, String player2) {
    String result = "It's a tie!!";
    if (player1 != player2) {
      if ((player1 == "rock" && player2 == "scissors") ||
          (player1 == "scissors" && player2 == "paper") ||
          (player1 == "paper" && player2 == "rock")) {
        result = "Player 1 Wins!!";
      } else {
        result = "Player 2 Wins!!";
      }
    }

    return Container(
          height: 96,
          alignment: Alignment.center,
          child: Text(
            result,
            style: const TextStyle(
                fontFamily: "Poppins",
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        );
  }
}

