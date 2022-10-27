import 'package:flutter/material.dart';

class ShowPage extends StatelessWidget {
  const ShowPage({
    Key? key,
    required this.sentence1,
    required this.sentence2,
  }) : super(key: key);
  final String sentence1;
  final String sentence2;

  @override
  Widget build(BuildContext context) {
    var assetName = 'assets/avatar.png';
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(image: AssetImage(assetName)),
          ),
          HeadlineText(),
          CommentText(),
        ],
      ),
    );
  }

  Padding CommentText() {
    return Padding(
      padding: EdgeInsets.all(6.0),
      child: Text(sentence2,
          style: TextStyle(
              fontWeight: FontWeight.w300, fontStyle: FontStyle.italic)),
    );
  }

  Padding HeadlineText() {
    return Padding(
      padding: _EdgeIns.sekiz,
      child: Text(
        sentence1,
        textAlign: TextAlign.center,
        maxLines: 2,
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}

mixin _EdgeIns {
  static const sekiz = EdgeInsets.all(8.0);
}
