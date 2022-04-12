// TODO Implement this library.
// TODO Implement this library.
import 'package:flutter/material.dart';

class Scrollbar4 extends StatelessWidget {
  // const Scrollbar4({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Scrollbar4 loaded');
    return Scrollbar(
      // child: const Text("hello"),
      child: ListView(
        children: <Widget>[
          Container(
            child: const Text("hello 4"),
          )
        ],
      ),
    );
  }
}
