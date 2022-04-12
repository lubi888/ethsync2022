import 'package:flutter/material.dart';

class Scrollbar0 extends StatelessWidget {
  // const Scrollbar0({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('scrollbar0 loaded');
    return Scrollbar(
      // child: const Text("hello"),
      child: ListView(
        children: <Widget>[
          // Container(
          //   child: const Center(child: Text("hello 0")),
          Container(
            padding: const EdgeInsets.all(15.0),
            width: 300.0,
            height: 120.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.yellow.shade500,
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            // child: FlatButton(
            child: Text(
              // EthSyncLocalizations.of(context).ethUrlEthereumOrg,
              "hi",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red.shade300,
                fontStyle: FontStyle.italic,
                fontSize: 100.0,
              ),
            ),
            // onPressed: EthSyncUrl.launchURLFlutter,
            // ),
          ),
        ],
      ),
    );
  }
}
