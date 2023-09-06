class QUze {
  final String qution;
  final List<Anser> anwserlist;

  QUze({required this.qution, required this.anwserlist});
}

class Anser {
  final String answer;
  final bool iscorect;

  Anser({required this.answer, required this.iscorect});
}

List<QUze> AllQuze = [
  QUze(qution: "ahats your name", anwserlist: [
    Anser(answer: "salam", iscorect: false),
    Anser(answer: "salam", iscorect: false),
    Anser(answer: "borkot", iscorect: false),
    Anser(answer: "salam", iscorect: false),
  ]),
  QUze(qution: "ahats your fathert name", anwserlist: [
    Anser(answer: "salam", iscorect: false),
    Anser(answer: "salam", iscorect: false),
    Anser(answer: "salam", iscorect: false),
    Anser(answer: "salam", iscorect: false),
  ]),
  QUze(qution: "ahats your mother name", anwserlist: [
    Anser(answer: "salam", iscorect: false),
    Anser(answer: "salam", iscorect: false),
    Anser(answer: " korim", iscorect: false),
    Anser(answer: "salam", iscorect: false),
  ]),
  QUze(qution: "ahats your brother name", anwserlist: [
    Anser(answer: "salam", iscorect: false),
    Anser(answer: "salam", iscorect: false),
    Anser(answer: "salam", iscorect: false),
    Anser(answer: "salam", iscorect: false),
  ]),
];
