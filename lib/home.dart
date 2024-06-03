import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/quizescree.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Image.asset("assets/1.png"),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return quizscreen();
                  },
                ));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "start quiz now",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.red.shade700),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
