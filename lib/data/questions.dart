import '../models/question.dart';


  final List<Question> questions = [

  Question(
    currentIndex:1,
    type: "text",
    questionText:
        "Sarah is 30 years old and five times older than her sister. How old will she be when she is three times her sister’s age?",
    options: ["35", "36", "40", "45"],
    correctIndex: 1, // "36"
  ),

  Question(
   currentIndex:2,
    type: "text",
    questionText:
        "Which number completes the pattern: 3 → 8, 5 → 26, 7 → 50, 9 → __ ?",
    options: ["80", "82", "84", "90"],
    correctIndex: 1, // "82"
  ),

  Question(
   currentIndex:3,
    type: "text",
    questionText:
        "10 printers print 10 pages in 10 minutes. How long would 100 printers take to print 100 pages?",
    options: ["1 min", "10 min", "5 min", "100 min"],
    correctIndex: 1, // "10 min"
  ),

  Question(
    currentIndex:4,
    type: "text",
    questionText:
        "Identify the next number: 101, 104, 109, 116, __?",
    options: ["100", "130", "120", "125"],
    correctIndex: 3, // "125"
  ),

  Question(
   currentIndex:5,
    type: "text",
    questionText:
        "Two hoses fill a tank in 4 and 3 minutes, a leak drains it in 12 minutes. How long to fill with all operating together?",
    options: ["2 min", "3 min", "4 min", "5 min"],
    correctIndex: 0, // "2 min"
  ),

  Question(
    currentIndex:6,
    type: "text",
    questionText:
        "You're competing in a race and just passed the runner in second place. What position are you in now?",
    options: ["First", "Second", "Third", "Fourth"],
    correctIndex: 1, // "Second"
  ),

 
 
  Question(
   currentIndex: 7,
    type: "image",
    questionText: "Choose the missing puzzle piece:",
    imagePath: "assets/q1/p1.jpg",
    options: [
      "assets/q1/a1.jpg",
      "assets/q1/a2.jpg",
      "assets/q1/a3.jpg",
      "assets/q1/a4.jpg",
    ],
    correctIndex: 2,
  ),
  Question(
   currentIndex:8,
    type: "image",
    questionText: "Choose the missing puzzle piece:",
    imagePath: "assets/q2/p2.jpeg",
    options: [
      "assets/q2/a1.jpeg",
      "assets/q2/a2.jpeg",
      "assets/q2/a3.jpeg",
      "assets/q2/a4.jpeg",
    ],
    correctIndex: 3,
  ),
     Question(
   currentIndex:9,
    type: "image",
    questionText: "Choose the missing puzzle piece:",
    imagePath: "assets/q3/p3.jpeg",
    options: [
      "assets/q3/a1.jpeg",
      "assets/q3/a2.jpeg",
      "assets/q3/a3.jpeg",
      "assets/q3/a4.jpeg",
    ],
    correctIndex: 0,
  ),
    Question(
    currentIndex:10,
    type: "image",
    questionText: "Choose the missing puzzle piece:",
    imagePath: "assets/q4/p4.jpeg",
    options: [
      "assets/q4/a1.jpeg",
      "assets/q4/a2.jpeg",
      "assets/q4/a3.jpeg",
      "assets/q4/a4.jpeg",
    ],
    correctIndex: 0,
  ),
    Question(
    currentIndex:11,
    type: "image",
    questionText: "Choose the missing puzzle piece:",
    imagePath: "assets/q5/p5.jpeg",
    options: [
      "assets/q5/a1.jpeg",
      "assets/q5/a2.jpeg",
      "assets/q5/a3.jpeg",
      "assets/q5/a4.jpeg",
    ],
    correctIndex: 2,
  ),
    Question(
    currentIndex:12,
    type: "image",
    questionText: "Choose the missing puzzle piece:",
    imagePath: "assets/q6/p6.jpeg",
    options: [
      "assets/q6/a1.jpeg",
      "assets/q6/a2.jpeg",
      "assets/q6/a3.jpeg",
      "assets/q6/a4.jpeg",
    ],
    correctIndex: 3,
  ),
];