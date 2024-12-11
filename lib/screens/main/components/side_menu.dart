import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/screens/interview/interview_questions.dart';
import '../../../constants.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;
// static const String _url = 'https://flutter.dev';
void launchURL(String urlString) async {
  final Uri url = Uri.parse(urlString);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $urlString');
  }
  throw 'Could not launch $urlString';
}

class SideMenu extends StatelessWidget {

  const SideMenu({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Uzbekistan",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Tashkent",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "27",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {
                        html.window.open("assets/resume.pdf", "text");
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const InterviewQuestions()));
                        },
                        child: Text("Interview Questions")),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              launchURL(
                                  "https://www.linkedin.com/in/islomjon-rikhsiev");
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              launchURL("https://github.com/islom9797");
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              launchURL("https://t.me/islom979");
                            },
                            icon: Icon(Icons.telegram),
                            // icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
