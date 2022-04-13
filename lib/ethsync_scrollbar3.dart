import 'package:flutter/material.dart';
import './ethsync_text.dart';

class Scrollbar3 extends StatelessWidget {
  // const Scrollbar3({ Key? key }) : super(key: key);
  final String _kAsset1 = 'assets/images/go-download-website.png';
  final String _kAsset2 = 'assets/images/duIcon.png';

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
          Container(
            child: const Text(
              ethTextFonts,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 30.0,
              ),
            ),
          ),
          Container(
            child: Image.asset(
              _kAsset1,
              height: 100.0,
              width: 100.0,
            ),
          ),
          Container(
            child: Image.asset(
                // image: AssetImage('assets/images/duicon.png'),
                _kAsset2,
                semanticLabel: 'du Icon',
                height: 100.0,
                width: 100.0),
          )
        ],
      ),
    );
  }
}
