import 'package:flutter/material.dart';

class ButtonNext extends StatelessWidget {
  const ButtonNext({
    Key? key,
    required PageController Pagecontroller,
  })  : _Pagecontroller = Pagecontroller,
        super(key: key);

  final PageController _Pagecontroller;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        _Pagecontroller.nextPage(
            duration: _duration(), curve: Curves.slowMiddle); //animasyon
      },
      child: Icon(
        Icons.chevron_right,
      ),
    );
  }
}

class ButtonPrevious extends StatelessWidget {
  const ButtonPrevious({
    Key? key,
    required PageController Pagecontroller,
  })  : _Pagecontroller = Pagecontroller,
        super(key: key);

  final PageController _Pagecontroller;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          _Pagecontroller.previousPage(
              duration: _duration(), curve: Curves.slowMiddle); //animasyon
        },
        child: Icon(
          Icons.chevron_left,
        ));
  }
}

Duration _duration() => Duration(seconds: 1);
