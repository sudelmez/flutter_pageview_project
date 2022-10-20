import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  const Comment({
    Key? key,
    required this.sentence,
  }) : super(key: key);
  final String sentence;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6.0),
      child: Text(sentence,
          style: TextStyle(
              fontWeight: FontWeight.w300, fontStyle: FontStyle.italic)),
    );
  }
}

class Headline extends StatelessWidget {
  const Headline({
    Key? key,
    required this.sentence,
  }) : super(key: key);
  final String sentence;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        sentence,
        textAlign: TextAlign.center,
        maxLines: 2,
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
