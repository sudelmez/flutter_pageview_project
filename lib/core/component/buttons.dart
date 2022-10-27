import 'package:flutter/material.dart';

class ButtonBuild extends StatelessWidget {
  const ButtonBuild(
      {Key? key,
      required PageController Pagecontroller,
      required bool this.cmt})
      : _Pagecontroller = Pagecontroller,
        super(key: key);

  final PageController _Pagecontroller;
  final bool cmt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
          onPressed: cmt
              ? () {
                  _Pagecontroller.nextPage(
                      duration: _duration(),
                      curve: Curves.slowMiddle); //animasyon
                }
              : () {
                  _Pagecontroller.previousPage(
                      duration: _duration(),
                      curve: Curves.slowMiddle); //animasyon
                },
          child: cmt
              ? Icon(
                  Icons.chevron_right,
                )
              : Icon(
                  Icons.chevron_left,
                )),
    );
  }
}

Duration _duration() => Duration(seconds: 1);
