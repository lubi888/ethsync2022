import 'package:flutter/material.dart';
import './ethsync_text.dart';

class Scrollbar1 extends StatelessWidget {
  // const Scrollbar0({ Key? key }) : super(key: key);
  //   Locale myLocale = Localizations.localeOf(context);
  // print(myLocale.toString() + ' on Scrollbar2');
  final String _kAsset2 = 'assets/go-download-website.png';
  // final String _kAsset3 = 'assets/footer-gopher.jpg';
  final String _kAsset4 = 'assets/go-env.png';

  @override
  Widget build(BuildContext context) {
    print('scrollbar1 loaded');
    return Scrollbar(
      // child: const Text("hello"),
      child: ListView(
        children: <Widget>[
          Container(
            child: const Text("hello coding."),
          ),
          Container(child: Text(ethTextIntro)),
          Container(
            child: Image.asset(
              _kAsset2,
              height: 100.0,
              width: 200.0,
            ),
            // onPressed: EthSyncUrl.launchURLGolangOrgDL,
            // onPressed: EthSyncUrl.launchURLGolangOrgDL(),,
          ),
          Container(
            child: Image.asset(
              _kAsset4,
              height: 200.0,
              width: 200.0,
            ),
          )
        ],
      ),
    );
  }
}
