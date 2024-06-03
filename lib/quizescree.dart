import 'package:flutter/material.dart';
import 'package:quiz_app/resultscree.dart';
import 'package:quiz_app/widgets/answer_card.dart';
import 'package:quiz_app/widgets/nextpage.dart';
import 'question.dart';

class quizscreen extends StatefulWidget {
  const quizscreen({super.key});

  @override
  State<quizscreen> createState() => _quizscreenState();
}

class _quizscreenState extends State<quizscreen> {
  int? selectedindex;
  int questionindex = 0;
  int score = 0;

  void pickAnswer(int val) {
    setState(() {
      selectedindex = val;
      final qusetionss = question[questionindex];

      if (selectedindex == qusetionss.correctAnswerIndex) {
        score++;
      }
    });
  }

  void goToNextQuestion() {
    setState(() {
      if (questionindex < question.length - 1) {
        questionindex++;
        selectedindex = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final qusetions = question[questionindex];
    bool islastquestion = questionindex == question.length - 1;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 186, 123, 197),
      appBar: AppBar(
        title: Center(child: Text("Quiz")),
        backgroundColor: Colors.purple,
        elevation: 1,
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              qusetions.question,
              style: TextStyle(fontSize: 21, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: qusetions.option.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: selectedindex == null ? () => pickAnswer(index) : null,
                  child: AnswerCard(
                      question: qusetions.option[index],
                      isselected: selectedindex == index,
                      currentIndex: index,
                      correctAnswerIndex: qusetions.correctAnswerIndex,
                      selectedAnswerIndex: selectedindex),
                );
              },
            ),
            islastquestion
                ? RectangleButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => resultscreen(
                            score: score,
                          ),
                        ),
                      );
                    },
                    label: 'finish',
                  )
                : RectangleButton(
                    onPressed: selectedindex != null ? goToNextQuestion : null,
                    label: 'next')
          ],
        ),
      ),
    );
  }
}
