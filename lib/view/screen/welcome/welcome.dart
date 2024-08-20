import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logincircleavatar.png",
              ),
              Container(
                height: 46,
                width: 318,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff0A51EB)
                ),
              )
            ],
          ),
          Image.asset("assets/images/splash.png")
        ],
      ),
    );
  }
}
