import 'package:flutter/material.dart';


class QuestionTextWidget extends StatelessWidget {//only display the question
  final String questionText;
  final List<String> options;
  final Function(int) onSelected;
  final int currentIndex;     
  final int? selectedOption;


  const QuestionTextWidget({
    required this.questionText,
    required this.options,
    required this.onSelected,
    required this.currentIndex,
      required this.selectedOption,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,//start from left
      children: [
        // QUESTION INDEX
        Text(
          "Question ${currentIndex}",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.grey[700],
          ),
        ),
        SizedBox(height: 10),

        // QUESTION TEXT
        Text(

          questionText,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30),

        // OPTIONS (just select, don’t move to next)
        //make container for each question as loop
        ...List.generate(options.length, (index) {
          
      bool isSelected = selectedOption == index; 
          return Container(
            margin: EdgeInsets.only(bottom: 12),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                     backgroundColor:   isSelected ? const Color.fromARGB(255, 50, 50, 50) : Color(0xFFFFA239), 
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: Size(200, 50), // not full width
              ),
              onPressed: () => onSelected(index), // select answer
              child: Text(options[index], style: TextStyle(fontSize: 18)),
            ),
          );
        }),

        SizedBox(height: 50),

       
    
      ],
    );
  }
}