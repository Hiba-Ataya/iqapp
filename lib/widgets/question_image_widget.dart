import 'package:flutter/material.dart';


class QuestionImageWidget extends StatelessWidget {
  final String questionText;
  final String imagePath;
  final List<String> options;
  final Function(int) onSelected;
  final int currentIndex;
  final int? selectedOption;

  const QuestionImageWidget({
    required this.questionText,
    required this.imagePath,
    required this.options,
    required this.onSelected,
    required this.currentIndex,
    this.selectedOption,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Question $currentIndex",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.grey[700],
          ),
        ),
        SizedBox(height: 10),
        Text(
          questionText,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Center(child: Image.asset(imagePath, height: 180)),
        SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(options.length, (index) {
            bool isSelected = selectedOption == index;
            return GestureDetector(
              onTap: () => onSelected(index),
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 6),
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.grey.shade400 : Colors.transparent,
                  border: Border.all(
                      color: isSelected ? Colors.black : Color(0xFF8CE4FF),
                      width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  options[index],
                  height: 70,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
