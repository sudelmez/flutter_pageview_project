import 'package:flutter/material.dart';
import 'package:flutter_pageview_project/core/component/textproduct.dart';

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
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(image: AssetImage(assetName)),
          ),
          Headline(
            sentence: sentence1,
          ),
          Comment(
            sentence: sentence2,
          ),
        ],
      ),
    );
  }
}
