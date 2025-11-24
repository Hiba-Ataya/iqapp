import 'package:flutter/material.dart';
import '../pages/quiz_page.dart';
import '../widgets/custom_appbar.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),

      body: Container(
        color: Colors.white,   
        child: Center(//at center
          child: Column(//vertically
            mainAxisSize: MainAxisSize.min,//it takes only the needed space
            children: [

              // BIG PICTURE
              Image.asset(
                'assets/welcome/welcome.png',
                width: 250,
                height: 250,
              ),
              SizedBox(height: 30),

              // TEXT 1
              Text(
                '"Challenge your mind',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              // TEXT 2
              Text(
                '        Discover your IQ!"',
                style: TextStyle(
                  fontSize: 28,
                   fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              SizedBox(height: 40),

              // BUTTON
              ElevatedButton(
                style: ElevatedButton.styleFrom(//style of button
                  backgroundColor: Color(0xFFFF5656),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,//show flutter where is he now
                    MaterialPageRoute(builder: (_) => QuizPage()),//the new page to show
                  );
                },
                child: Text(
                  "Start Test",//text in button
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
