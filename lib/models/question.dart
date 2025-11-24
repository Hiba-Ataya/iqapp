class Question {
  final String type; // "text" or "image"
  final String questionText;
  final List<String> options;
  final int correctIndex;
  final String? imagePath;
  final int currentIndex;     

  Question({
    required this.type,
    required this.questionText,
    required this.options,
    required this.correctIndex,
    this.imagePath,
    required this.currentIndex,
    
  });
}