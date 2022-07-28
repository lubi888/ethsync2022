import 'package:flutter/material.dart';
// import './ethsync_zfonts.dart';
import './ethsync_text.dart';

class Scrollbar4 extends StatelessWidget {
  const Scrollbar4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Scrollbar4 loaded');
    return Scrollbar(
      child: Container(
        child: ListView(
          children: const <Widget>[
            SelectableText(
              "fonts",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 50.0,
              ),
            ),
            SelectableText(
              ethTextFonts,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 45.0,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.yellow.shade500,
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
        ),
      ),
    );
  }
}
