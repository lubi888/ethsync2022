import 'package:flutter/material.dart';
import './ethsync_text.dart';
import './ethsync_urllinks.dart';

// import './ethsync_localizations.dart';
class Scrollbar2 extends StatelessWidget {
  // const Scrollbar2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Scrollbar2 loaded');
    return Scrollbar(
      // child: const Text("hello"),
      child: ListView(
        children: <Widget>[
          Container(
            child: const Text("hello 2"),
          )
        ],
      ),
    );
  }
}