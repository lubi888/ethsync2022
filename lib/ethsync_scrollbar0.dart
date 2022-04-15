import 'package:flutter/material.dart';
import './ethsync_text.dart';

class Scrollbar0 extends StatelessWidget {
  // const Scrollbar0({ Key? key }) : super(key: key);
  // final String _kAsset0 = 'assets/devcon1.png';
  // final String _kAsset2 = 'assets/etcBullet.png';
  // final String _kAsset3 = 'assets/ethGreenHelp.png';
  // final String _kAsset4 = 'assets/duIcon.png';
  final String _kAsset5 = 'assets/images/gethTerm.png';
  // final String _kAsset6 = 'assets/geth1win.png';

  @override
  Widget build(BuildContext context) {
    print('scrollbar0 loaded');
    return Scrollbar(
      // child: const Text("hello"),
      child: ListView(
        children: <Widget>[
          // Container(
          //   child: const Center(child: const Text("hello 0")),
          Container(
            padding: const EdgeInsets.all(15.0),
            width: 300.0,
            height: 120.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.yellow.shade500,
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            // child: Container(
            child: const Text(
              // ethUrlEthereumOrg,
              "hi",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 100.0,
              ),
            ),
            // onPressed: EthSyncUrl.launchURLFlutter,
            // ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            width: 300.0,
            height: 140.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.yellow.shade500,
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            child: const Text(
              ethTextIntro,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 18.0,
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
            child: Container(
              child: const Text(
                ethUrlEthereumOrg,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                  fontSize: 24.0,
                ),
              ),
              // onPressed: EthSyncUrl.launchURLFlutter,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            width: 300.0,
            height: 600.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.yellow.shade500,
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            child: const Text(
              ethTextFounders,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 18.0,
              ),
            ),
          ),
          // Container(
          //   child: Image.asset(_kAsset3),
          //   onPressed: () async {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => EthsyncExpandImage(
          //                 image: _kAsset3,
          //                 title: EthSyncLocalizations.of(context)
          //                     .ethImgTermGreen, //ethImgTermGreen
          //               )),
          //     );
          //   },
          // ),
          Container(
            child: Image.asset(_kAsset5),
            // onPressed: () async {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => EthsyncExpandImage(
            //               image: _kAsset5,
            //               title: "geth Terminator",
            //             )),
            //   );
            // },
          ),
          // EthSync Heading ---------------------------------------------
          Container(
            padding: const EdgeInsets.all(15.0),
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.yellow.shade500,
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            child: const Text(
              ethEhSyncHeading,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 24.0,
              ),
            ),
          ),
          Container(
            child: const Text(
              ethEthSyncPrimaryGoal,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            child: const Text(
              ethEthSimpleQuiz,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
