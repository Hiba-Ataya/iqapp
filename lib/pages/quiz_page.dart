import 'package:flutter/material.dart';
import '../data/questions.dart';
import '../widgets/question_text_widget.dart';
import '../widgets/question_image_widget.dart';
import '../pages/result_page.dart';
import '../widgets/custom_appbar.dart';
import 'dart:async';


class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int index = 0;
  double score = 0;
  late DateTime startTime;
  //built-in class in Dart that stores a specific point in time
  //exact moment the user starts a question.
  //late:I will assign a value to this variable later,
  // but I promise it will be initialized before use.
  int? selectedOption;//can be null
  int timeLeft = 20; // countdown seconds per question
  Timer? timer;
 // Timer is a class from dart:async.
 //used for countdown
 //? so at the beggining can be null

  @override
  void initState() {
  //is a special method in StatefulWidget.
  // It runs once when the widget is first created, before the widget is
  //  displayed on the screen.
    super.initState();
    // Calls the parent class’s initState() to ensure the widget is initialized properly.
    startTime = DateTime.now();
    startTimer();
  }
  void startTimer() {
    timer?.cancel(); // stop previous timer if any
    timeLeft = 20;

  timer = Timer.periodic(Duration(seconds: 1),(_)  {//class in dart that runsa code after a duration
  //here every 1 sec
  if (timeLeft > 0) {
    setState(() {//to appear in ui that is decreasing
      timeLeft--;
    });
  } else {
   timer?.cancel();
    goNext(); // auto move to next question if time ends
  }
});

}

void goNext() {
final q = questions[index];

// update score if an option was selected
if (selectedOption != null && selectedOption == q.correctIndex) {
  score += 1;

  final timeTaken = DateTime.now().difference(startTime);
  //difference is method in DateTime that calculates diff between DateTime Object
  if (timeTaken.inSeconds < 5) score += 0.5;
}

if (index < questions.length - 1) {
  setState(() {
    index++;
    selectedOption = null; // reset selection
    startTime = DateTime.now();
    startTimer();
  });
} else {
  timer?.cancel();
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => ResultPage(score: score),
    ),
  );
}

}
  @override
  void dispose() {
    //special method in Stateful runs when the widget is removed
    timer?.cancel();//stop timer if timer not null
    super.dispose();//Calls the parent class’s dispose method to make sure the widget is cleaned up properly.
  }


  @override
  Widget build(BuildContext context) {
    final q = questions[index];

    return Scaffold(
      appBar:  CustomAppBar(),
      body: Container(
  color: Colors.white, // BACKGROUND WHITE
  padding: const EdgeInsets.all(20),//padding btw container and the inside child
  child: Column(
    children: [
      // TIMER UNDER NAVBAR
      Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),///padding in side the timer
          decoration: BoxDecoration(
            color: Colors.redAccent.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            "Time left: $timeLeft s",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontFamily: 'Roboto', // built-in font
            ),
          ),
        ),
      ),
      SizedBox(height: 50),

      // QUESTION CARD
      Flexible(//takes only space needed
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[100], // light grey card
            borderRadius: BorderRadius.circular(20),
           
          ),
          child: q.type == "text"
              ? QuestionTextWidget(
                  questionText: q.questionText,
                  options: q.options,
                  currentIndex:q.currentIndex,
                  selectedOption: selectedOption,   //to highlight the answer
                  onSelected: (i) //call back function
                  //when the answer is pressed so the parent will take the index of it
                  { setState(() { 
                    selectedOption = i;//change the selected option to i so it will be highlighted
                    }); },
                  
                )
              : QuestionImageWidget(
                        questionText: q.questionText,
                        imagePath: q.imagePath!,
                        options: q.options,
                        currentIndex: index,
                        selectedOption: selectedOption,
                        onSelected: (i) {
                          setState(() {
                            selectedOption = i;
                          });
                        },
                      ),
          ),
        ),

        SizedBox(height: 20),

        // NEXT BUTTON
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFF5656),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            onPressed: goNext, // moves to next question
            child: Text(
              "Next",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    ),
  ),
);

}
}

      
  