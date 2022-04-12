import 'package:flutter/material.dart';

class Scrollbar1 extends StatelessWidget {
  // const Scrollbar0({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('scrollbar1 loaded');
    return Scrollbar(
      // child: const Text("hello"),
      child: ListView(
        children: <Widget>[
          Container(
            child: const Text("hello 1"),
          )
        ],
      ),
    );
  }
}
