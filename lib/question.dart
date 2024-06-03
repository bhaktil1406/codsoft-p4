class Question {
  final String question;
  final List<String> option;
  final int correctAnswerIndex;

  const Question({
    required this.question,
    required this.option,
    required this.correctAnswerIndex,
  });
}

const List<Question> question = [
  Question(
    question: "1. What is the capital of France ?",
    option: [
      'a) Madrid',
      'b) paris',
      'c) Berlin',
      'd) rome',
    ],
    correctAnswerIndex: 1,
  ),
  Question(
    question: "2. In What continent is brazil located ?",
    option: [
      'a) Europ',
      'b) asia',
      'c) North America',
      'd) south america',
    ],
    correctAnswerIndex: 2,
  ),
  Question(
    question:
        "3.	Which one of the following metals do not react with cold as well as hot water ?",
    option: [
      'a) Fe ',
      'b) Mg',
      'c) Na',
      'd) Ca',
    ],
    correctAnswerIndex: 0,
  ),
  Question(
    question:
        "4.	Which of the following is working capital in the farming sector ?",
    option: [
      'a) threshing machine  ',
      'b) money',
      'c) tractor',
      'd) land',
    ],
    correctAnswerIndex: 1,
  ),
];
