import 'package:flutter/material.dart';
import 'package:flutter_tarea3/app/view/result_page.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const _HeaderView(),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset("assets/images/rock.png",
                      width: 150, height: 150),
                  const Text(
                    "Player 1",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Image.asset("assets/images/rock.png",
                      width: 150, height: 150),
                  const Text(
                    "Player 2",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) {
                  return ResultPage();
                },
              ));
            },
            child: Container(
              width: 200,
              height: 50,
              color: const Color(0xFFD9D9D9),
              alignment: Alignment.center,
              child: const Text(
                "JUGAR",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF5B5B5B)),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/images/shape.png",
                width: 141,
                height: 129,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _HeaderView extends StatelessWidget {
  const _HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        color: const Color(0x4DFFE84A),
        alignment: Alignment.center,
        child: const Text(
          "Rock-paper-scissors",
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Color(0xFF4A4A4A)),
        )
    );
  }
}

class _BodyView extends StatelessWidget {
  const _BodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Image.asset("assets/images/rock.png",
                width: 150, height: 150),
            const Text(
              "Player 1",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          children: [
            Image.asset("assets/images/rock.png",
                width: 150, height: 150),
            const Text(
              "Player 2",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }

}

class _GamePlay extends StatelessWidget {
  _GamePlay(this.play, this.player);

  String play;
  String player;

  @override
  Widget build(BuildContext _) {
    return Column(
      children: [
        Image.asset("assets/images/rock.png",
            width: 150, height: 150),
        const Text(
          "Player 1",
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 25,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

}

