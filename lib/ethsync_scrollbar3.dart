import 'package:flutter/material.dart';

class Scrollbar3 extends StatelessWidget {
  // const Scrollbar3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Scrollbar3 loaded');
    return Scrollbar(
      // child: const Text("hello"),
      child: ListView(
        children: <Widget>[
          Container(
            child: const Text(
              "hello 3",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 100.0,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            width: 300.0,
            height: 120.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.yellow.shade500,
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
          ),
        ],
      ),
    );
  }
}
