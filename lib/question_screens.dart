import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/model.dart';
import 'answer_question.dart';
import 'data.dart';

class questionscreen extends StatefulWidget {
  void Function(String answer) onSelectAnswer;
  questionscreen({
    super.key,
    required this.onSelectAnswer,
  });

  @override
  State<questionscreen> createState() => _questionscreenState();
}

class _questionscreenState extends State<questionscreen> {
  var currentQuestionIndex = 0;

  void correctAnswer(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  Widget build(BuildContext context) {
    question currentquestion = questions[currentQuestionIndex];
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: Container(
            margin: EdgeInsets.all(40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  currentquestion.text,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                ...currentquestion.getShuffledAnswers().map((answer) {
                  return answerscreen(
                    anstext: answer,
                    onTap: () {
                      correctAnswer(answer);
                    },
                  );
                })
                // answerscreen(
                //   currentquestion.answers[0],
                //   () {},
                // ),
                // answerscreen(
                //   currentquestion.answers[1],
                //   () {},
                // ),
                // answerscreen(
                //   currentquestion.answers[2],
                //   () {},
                // ),
                // answerscreen(
                //   currentquestion.answers[3],
                //   () {},
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
