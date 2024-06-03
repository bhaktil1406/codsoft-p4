import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/quizescree.dart';
import 'package:quiz_app/widgets/nextpage.dart';

class resultscreen extends StatelessWidget {
  const resultscreen({
    super.key,
    required this.score,
  });
  final int score;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Your score",
              style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            SizedBox(
              height: 50,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 250,
                  width: 250,
                  child: CircularProgressIndicator(
                    strokeWidth: 12,
                    value: score / 2,
                    color: Colors.white,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      score.toString() + "/4",
                      style: TextStyle(fontSize: 80, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${(score / question.length * 100).round()}%',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            RectangleButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (_) => quizscreen(),
                  ),
                );
              },
              label: 'Restart',
            ),
          ],
        ),
      ),
    );
  }
}
