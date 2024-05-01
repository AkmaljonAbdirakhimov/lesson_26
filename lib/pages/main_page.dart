import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State createState() {
    return _MainPage();
  }
}

class _MainPage extends State<MainPage> {
  String question = "1. 2+2=?";
  String answer = "4";
  String userAnswer = "";

  List<Map<String, dynamic>> questionsAndAnswers = [];

  @override
  Widget build(BuildContext context) {
    print("Build ishladi");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (userAnswer.isNotEmpty)
              Text(answer == userAnswer ? "To'g'ri javob" : "Noto'g'ri javob"),
            Text(
              question,
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                userAnswer = "5";
                setState(() {});
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: userAnswer.isEmpty
                    ? null
                    : "5" == answer
                        ? Colors.green
                        : Colors.red,
              ),
              child: const Text("5"),
            ),
            ElevatedButton(
              onPressed: () {
                // question = "2. Savol?";

                userAnswer = "4";

                setState(() {});
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: userAnswer.isEmpty
                    ? null
                    : "4" == answer
                        ? Colors.green
                        : Colors.red,
              ),
              child: const Text("4"),
            ),
            ElevatedButton(
              onPressed: () {
                // question = "2. Savol?";

                userAnswer = "1";

                setState(() {});
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: userAnswer.isEmpty
                    ? null
                    : "1" == answer
                        ? Colors.green
                        : Colors.red,
              ),
              child: const Text("1"),
            ),
            ElevatedButton(
              onPressed: () {
                // question = "2. Savol?";

                userAnswer = "3";

                setState(() {});
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: userAnswer.isEmpty
                    ? null
                    : "3" == answer
                        ? Colors.green
                        : Colors.red,
              ),
              child: const Text("3"),
            ),
          ],
        ),
      ),
    );
  }
}
