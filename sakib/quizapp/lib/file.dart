class quiz {
  final String quiztext;
  final List anserList;

  quiz({required this.quiztext, required this.anserList});
}

class Answer {
  final String answer;
  final bool iscrorect;

  Answer({required this.answer, required this.iscrorect});
}

List<quiz> allquiz = [
  quiz(quiztext: "What is the national animal of Bangladesh?", anserList: [
    Answer(answer: "tiger", iscrorect: false),
    Answer(answer: "CAT", iscrorect: true),
    Answer(answer: "goat", iscrorect: false),
    Answer(answer: "dog", iscrorect: false)
  ]),
  quiz(quiztext: "What is the national food of Bangladesh?", anserList: [
    Answer(answer: "APPLE", iscrorect: false),
    Answer(answer: "CAT", iscrorect: true),
    Answer(answer: "goat", iscrorect: false),
    Answer(answer: "dog", iscrorect: false)
  ]),
  quiz(quiztext: "What is the national flower of Bangladesh?", anserList: [
    Answer(answer: "ROSE", iscrorect: false),
    Answer(answer: "CAT", iscrorect: true),
    Answer(answer: "goat", iscrorect: false),
    Answer(answer: "dog", iscrorect: false)
  ]),
  quiz(quiztext: "What is the national bird of Bangladesh?", anserList: [
    Answer(answer: "tiger", iscrorect: false),
    Answer(answer: "CAT", iscrorect: true),
    Answer(answer: "goat", iscrorect: false),
    Answer(answer: "dog", iscrorect: false)
  ])
];
