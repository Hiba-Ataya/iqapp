import 'package:flutter/material.dart';
import 'package:iqapp/pages/welcome_page.dart';
import '../widgets/custom_appbar.dart';

class ResultPage extends StatelessWidget {
  final double score;

  const ResultPage({required this.score});

  String getInterpretation() {
    if (score < 100) return "Your cognitive performance is below average. Don’t worry — with practice you improve!";
    if (score < 120) return "Your IQ is average! You have solid reasoning skills.";
    return "High IQ! You demonstrate strong analytical and problem-solving abilities!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        width: double.infinity,
        color: Colors.white, // White background
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            /// IMAGE (bigger)
            Image.asset(
              "assets/result/result.png", // استبدليه بالصورة تبعك
              height: 230,
            ),

            SizedBox(height: 35),

            /// "YOUR IQ SCORE IS..."
            Text(
              "Your IQ score is ${score.toStringAsFixed(1)}!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 18),

            /// INTERPRETATION
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                getInterpretation(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            SizedBox(height: 60),

            /// BUTTON (white text + red style)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF5656),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => WelcomePage()),
                );
              },
              child: Text(
                "Back to Home",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // كتابتك بالأبيض
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
