import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
    print('Answer chosen!');
  }

  @override
  Widget build(context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions.elementAt(questionIndex)),
            ElevatedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            ElevatedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 chosen!')),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () {
                // ...
                questionIndex++;
                print('Answer 3 chosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
