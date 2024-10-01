import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map> allQuestions = [
    {
      "questions": "Who is Founder of Microsoft?",
      "options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon Musk"],
      "correctAnswer": 1
    },
    {
      "questions": "Who is Founder of Google?",
      "options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon Musk"],
      "correctAnswer": 2
    },
    {
      "questions": "Who is Founder of SpaceX?",
      "options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon Musk"],
      "correctAnswer": 3
    },
    {
      "questions": "Who is Founder of Apple?",
      "options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon Musk"],
      "correctAnswer": 0
    },
    {
      "questions": "Who is Founder of Meta?",
      "options": ["Steve Jobs", "Mark Zuckerberg", "Lary Page", "Elon Musk"],
      "correctAnswer": 1
    },
  ];

  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  bool questionPage = true;
  int score = 0;

  WidgetStateProperty<Color?> checkAnswer(int answerIndex) {
    if (selectedAnswerIndex != -1) {
      if (answerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswerIndex == answerIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  void selectAnswer(int answerIndex) {
    if (selectedAnswerIndex == -1) {
      setState(() {
        selectedAnswerIndex = answerIndex;
        if (answerIndex ==
            allQuestions[currentQuestionIndex]["correctAnswer"]) {
          score++;
        }
      });
    }
  }

  String imageChange() {
    if (score == allQuestions.length) {
      return "assets/trophy.png";
    } else if (score > 3) {
      return "assets/thumbsup.png";
    } else {
      return "assets/cryingemj.jpeg";
    }
  }

  String resultMessage() {
    if (score == allQuestions.length) {
      return "Perfect! You are a quiz master!";
    } else if (score > 3) {
      return "Well tried! Great job!";
    } else {
      return "Better luck next time!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen() {
    if (questionPage == true) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(193, 84, 80, 80),
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w900, color: Colors.blue),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              children: [
                const SizedBox(width: 335),
                Text(
                    "Questions :${currentQuestionIndex + 1}/${allQuestions.length} ",
                    style: const TextStyle(
                        fontFamily: 'italic',
                        fontSize: 26,
                        color: Colors.cyan,
                        fontWeight: FontWeight.w700)),
              ],
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 30,
              child: Text(
                allQuestions[currentQuestionIndex]["questions"],
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 158, 222, 193)),
              ),
            ),
            const SizedBox(height: 40),
            for (int i = 0; i < 4; i++) ...[
              SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(i),
                  ),
                  onPressed: () {
                    selectAnswer(i);
                  },
                  child: Text(
                    allQuestions[currentQuestionIndex]['options'][i],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ]
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (currentQuestionIndex < allQuestions.length - 1) {
              currentQuestionIndex++;
            } else {
              questionPage = false;
            }
            selectedAnswerIndex = -1;
            setState(() {});
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz Result",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w900, color: Colors.blue),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(width: 400,
                height:400 ,
                imageChange(),
                
              ),
              const SizedBox(height: 20),
              Text(
                resultMessage(),
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Your Score: $score/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                ),
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStateColor.transparent),
                  onPressed: () {
                    questionPage = true;
                    selectedAnswerIndex = -1;
                    setState(() {});
                  },
                  child: const Text(
                    "Reset Test",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
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
}
