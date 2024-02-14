import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class answerscreen extends StatelessWidget {
  answerscreen({
    required this.anstext,
    required this.onTap,
    super.key,
  });

  String anstext;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(anstext),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
    );
  }
}
