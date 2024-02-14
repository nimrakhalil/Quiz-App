import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  final Function() onPressed;

  StartScreen({
    required this.onPressed,
    super.key,
  });

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              SizedBox(
                width: 80,
              ),
              Image(
                image: AssetImage(
                  'assets/images/logo.png',
                ),
                width: 270,
              ),
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 140,
              ),
              Text(
                "Quiz App",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 90,
            width: 150,
          ),
          Row(
            children: [
              const SizedBox(
                width: 140,
              ),
              ElevatedButton(
                  onPressed: () {
                    widget.onPressed();
                  },
                  child: Text("Start Quiz"))
            ],
          )
        ],
      ),
    );
  }
}
