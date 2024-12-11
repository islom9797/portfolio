import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main/components/side_menu.dart';

class InterviewQuestions extends StatefulWidget {
  const InterviewQuestions({Key? key}) : super(key: key);

  @override
  State<InterviewQuestions> createState() => _InterviewQuestionsState();
}

class _InterviewQuestionsState extends State<InterviewQuestions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interview Questions"),
      ),
      body: Column(
        children: [
          items(
              "const va final farqi nima?",
              "const - app run bolishidan oldin RAM da joy oladi va oldindan kiritilishi kerak va uni keyin o'zgartirib bo'lmaydi" +
                  "\nfinal - esa late birga ishlatsa bo'ladi va qiymatni keyinroq bersa bo'ladi va uni ham keyinchalik o'zgartirib bo'lmaydi"),
          items(
              "dynamic va varni farqi nima?",
              """var - bilan o‘zgaruvchi e’lon qilinganda, uning turi aniqlanadi va keyinchalik o‘zgarmaydi.
              Dart kompilyatori qiymat asosida uning turini avtomatik aniqlaydi.
              O‘zgaruvchi turi e’lon qilingandan so‘ng, boshqa turdagi qiymat berib bo‘lmaydi.,
              dynamic - bilan o‘zgaruvchi e’lon qilinganda, uning turi aniqlanmaydi va istalgan turdagi qiymatni qabul qilishi mumkin.
              dynamic bilan ishlashda turlarning xavfsizligi kafolatlanmaydi, chunki o‘zgaruvchi qiymati va turi istalgan vaqtda o‘zgarishi mumkin.""",
              link:
                  "https://stackoverflow.com/questions/12416507/difference-between-var-and-dynamic-type-in-dart"),
          items("dart tilida o'zgaruvchilar turlari?",
              "Bular int, double, num, String,List, Map, Set,var,bool,Function,"),
          items("Stateless va Stateful widgetlarining farqi nima?",
              "Stateless widgetda stateni o'zgartirib bo'lmaydi va Statefulda esa stateni o'zgartirib bo'ladi")
        ],
      ),
    );
  }
}

Widget items(String title, String answer, {String? link}) {
  return InkWell(
    onTap: () {
      if (link != null) launchURL(link);
    },
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 17),
          ),
          Container(
            height: 10,
          ),
          Text(
            answer,
            style: TextStyle(fontSize: 13),
          ),
        ],
      ),
    ),
  );
}
