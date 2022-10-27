import 'package:flutter/material.dart';
import 'package:flutter_pageview_project/core/component/buttons.dart';
import 'package:flutter_pageview_project/product/pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _Pagecontroller =
      PageController(initialPage: 0, viewportFraction: 1.0);

  int _currentpageindx = 0;

  void _Updatepage(int index) {
    setState(() {
      _currentpageindx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _currentpageindx.toString(),
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ButtonBuild(Pagecontroller: _Pagecontroller, cmt: false),
          ButtonBuild(Pagecontroller: _Pagecontroller, cmt: true),
        ],
      ),
      body: PageView(
        controller: _Pagecontroller,
        onPageChanged: _Updatepage,
        children: [
          ShowPage(
            sentence1: TextSentences.sent1,
            sentence2: TextSentences.sent2,
          ),
          ShowPage(
            sentence1: TextSentences.sent3,
            sentence2: TextSentences.sent4,
          ),
          ShowPage(
            sentence1: TextSentences.sent5,
            sentence2: TextSentences.sent6,
          ),
        ],
      ),
    );
  }
}

class TextSentences {
  static String sent1 = 'Connect with Your Friends!';
  static String sent2 = 'You can explore the world and meet new people!';
  static String sent3 = 'Share Your Stories!';
  static String sent4 = 'Everybody is waiting for you to share!';
  static String sent5 = 'Join Us!';
  static String sent6 = 'You can explore the world and meet new people!';
}
