import 'package:flutter/material.dart';
import './ethsync_text.dart';

class Scrollbar4 extends StatelessWidget {
  const Scrollbar4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Scrollbar4 loaded');
    return Scrollbar(
      // child: const Text("hello"),
      child: ListView(
        children: <Widget>[
          Container(
              child: const Text(
                  "hello 4/n this is the page where we are going to try some experimental software on mobile phone"
                  "\n the next line")),
          Container(
            child: const Text(ethTextFounders),
          )
        ],
      ),
    );
  }
}
