import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_test_application_1/pages/flashcars/card.dart';
import 'view.dart';

class FlashCards extends StatefulWidget {
  const FlashCards({Key? key}) : super(key: key);

  @override
  _FlashCardsState createState() => _FlashCardsState();
}

class _FlashCardsState extends State<FlashCards> {
  final List<QuizCard> _quizCard = [
    QuizCard(ques: 'What is your name?', ans: 'My name is Mobasshir.'),
    QuizCard(ques: 'What did you do?', ans: 'I am Student.'),
    QuizCard(ques: 'How old are you?', ans: 'I am 20 years old!')
  ];
  int _currentIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
              width: 250,
              child: FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front:
                    FlashCardView(text: _quizCard[_currentIdx].ques, elev: 5),
                back: FlashCardView(text: _quizCard[_currentIdx].ans, elev: 4),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton.icon(
                  onPressed: showPrev,
                  icon: const Icon(Icons.chevron_left),
                  label: const Text('Prev'),
                ),
                OutlinedButton.icon(
                  onPressed: showNext,
                  label: const Text('Next'),
                  icon: const Icon(Icons.chevron_right),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showNext() {
    setState(() {
      if (_currentIdx + 1 < _quizCard.length) {
        _currentIdx++;
      }
    });
  }

  void showPrev() {
    setState(() {
      if (_currentIdx != 0) {
        _currentIdx--;
      }
    });
  }
}
