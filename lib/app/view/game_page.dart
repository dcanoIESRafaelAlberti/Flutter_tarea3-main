import 'package:flutter/material.dart';
import 'package:flutter_tarea3/app/view/result_page.dart';
import 'package:flutter_tarea3/app/view/util_views.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const HeaderView("Rock-paper-scissors"),
          const SizedBox(height: 25,),
          const BodyView("rock", "rock"),
          const SizedBox(height: 96,),
          Button("PLAY", () => navigateToResultPage(context),),
          const BottomView()
        ],
      ),
    );
  }

  void navigateToResultPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) {
        return ResultPage();
      },
    ));
  }
}

