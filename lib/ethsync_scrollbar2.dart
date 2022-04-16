// import 'package:flutter/material.dart';
// import './ethsync_text.dart';
// import './ethsync_urllinks.dart';

// // import './ethsync_localizations.dart';
// class Scrollbar2 extends StatelessWidget {
//   // const Scrollbar2({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     print('Scrollbar2 loaded');
//     return Scrollbar(
//       // child: const Text("hello"),
//       child: ListView(
//         children: <Widget>[
//           Container(
//             child: const Text("hello 2"),
//           )
//         ],
//       ),
//     );
//   }
// }

// import './ethsync_urllinks.dart';
import 'package:flutter/material.dart';
import './ethsync_urllinks.dart';

//import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_web_view/flutter_web_view.dart';
// import 'package:flutter_web_browser/flutter_web_browser.dart';
// import 'dart:async';
// import './ethsync_txt.dart';

class Scrollbar2 extends StatelessWidget {
  final String _kAsset0 = 'assets/images/geth1win.png';
  final String _kAsset1 = 'assets/images/kraken-eth-eur.png';
  final String _kasset2 = 'assets/images/ethStackExchange.png';
  final String _kasset3 = 'assets/images/ethereum_Web_Xi.png';
  final String _kasset4 = 'assets/images/ethereum_youtube.png';

  // openBrowserTab() async {
  //   await FlutterWebBrowser.openWebPage(
  //       // url: "https://flutter.io/", androidToolbarColor: Colors.red[900]);
  //       url: "https://trade.kraken.com/markets/kraken/eth/eur",
  //       androidToolbarColor: Colors.red);
  // }

  @override
  Widget build(BuildContext context) {
    print("scrollbar3 loaded");
    //print current locale
    Locale myLocale = Localizations.localeOf(context);
    print(myLocale.toString() + ' on Scrollbar3');
    return Scrollbar(
      child: Container(
//                alignment: Alignment.center,
        child: ListView(
//                   Padding(padding: EdgeInsets.all(20.0)),
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0)),
            const Text(
              "check the net for live trades",
              textAlign: TextAlign.center,
            ),
            //blue box
            Container(
              padding: EdgeInsets.all(100.0),
              constraints: const BoxConstraints(
                maxHeight: 100.0,
                maxWidth: 200.0,
              ),
              color: Colors.blue[100],
            ),
            const Icon(
              Icons.directions_railway,
              color: Colors.yellowAccent,
            ), //centered
            const Text(
              "add some live graphs\nhave more inputs",
              textAlign: TextAlign.center,
            ),
            GestureDetector(
              child: Image.asset(
                _kasset3,
                height: 200.0,
                width: 250.0,
                fit: BoxFit.cover,
              ),
              onTap: EthSyncUrl.launchURLEthereum,
            ),

            // Container(
            //   height: 250.0,
            //   width: 300.0,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage(_kasset3),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            //   child: FlatButton(
            //     child: Padding(
            //         padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0)),
            //     onPressed: EthSyncUrl.launchURLEthereum,
            //   ),
            // ),
            //padding
            const Padding(padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0)),
            //1st btn. set size manually     //flex?
            GestureDetector(
              child: Image.asset(
                _kAsset1,
                height: 200.0,
                width: 250.0,
                fit: BoxFit.cover,
                // width: 550.0,
              ),
              // onPressed: EthSyncUrl.launchURLEthereum,
              onTap: EthSyncUrl.launchBrowserTabKrakenEthEur,
            ),
            //2nd image has boxfit; flta button insdie container
            const Padding(padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0)),
            //padding
            const Padding(padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0)),
            GestureDetector(
              child: Image.asset(
                _kasset2,
                width: 250.0,
                height: 200.0,
                fit: BoxFit.cover,
                // fit: Boxfit.cover,
              ),
              onTap: EthSyncUrl.launchURLEthStackexchange,
            ),
            //padding
            const Padding(padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0)),
            Container(
              height: 250.0,
              width: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(_kasset4),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0)),
                // onPressed: EthSyncUrl.launchURLEthYouTube,
              ),
            ),
            const Padding(padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0)),
            const Text(
              "Live eth, etc, btc, gold, silver, currency rates",
              textAlign: TextAlign.center,
            ),
            Container(
              constraints: const BoxConstraints(
                maxHeight: 100.0,
                maxWidth: 200.0,
              ),
              color: Colors.red[100],
            ),
            const Padding(padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0)),
            Text(
              "fx currency rates",
              textAlign: TextAlign.center,
            ),
            Container(
              constraints: const BoxConstraints(
                maxHeight: 100.0,
                maxWidth: 200.0,
              ),
              color: Colors.yellowAccent,
            ),
            const Padding(padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0)),
            Text(
              "ERC20 Coin. I.C.O. Initial Coin Offerings",
              textAlign: TextAlign.center,
            ),
            Container(
              constraints: const BoxConstraints(
                maxHeight: 100.0,
                maxWidth: 200.0,
              ),
              color: Colors.green[300],
            ),
            const Padding(padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 30.0)),
            Container(
              child: Image.asset(
                _kAsset0,
                height: 300.0,
                width: 300.0,
              ),
              // onPressed: () {},
            ),
            // FlatButton(
            //     child: Image.network(
            //       'https://media.giphy.com/media/4bWWKmUnn5E4/giphy.gif',
            //       height: 300.0,
            //       width: 300.0,
            //     ),
            //     onPressed: () {} //_launchURLGithub,
            //     ),
            // FlatButton(
            //   child: Image.network(
            //     'https://media.giphy.com/media/UQXqs6GF8ztnO/giphy.gif',
            //     height: 300.0,
            //     width: 300.0,
            //   ),
            //   onPressed: () {},
            // ),
            // FlatButton(
            //   child: Image.network(
            //     'https://media.giphy.com/media/oJJne1sq3R4d2/giphy.gif',
            //     height: 300.0,
            //     width: 300.0,
            //   ),
            //   onPressed: () {},
            // ),
            // FlatButton(
            //   child: Image.network(
            //     'https://media.giphy.com/media/iOFasUuit0Q0w/giphy.gif',
            //     height: 300.0,
            //     width: 300.0,
            //   ),
            //   onPressed: () {},
            // ),
            // FlatButton(
            //   child: Image.network(
            //     'https://media.giphy.com/media/ms8sgwQuPpIQg/giphy.gif',
            //     height: 300.0,
            //     width: 300.0,
            //   ),
            //   onPressed: () {}, //_launchURLGithub,
            // ),
            // FlatButton(
            //   child: Image.network(
            //     'https://media.giphy.com/media/A4PPu4HX8LLR6/giphy.gif',
            //     height: 300.0,
            //     width: 300.0,
            //   ),
            //   onPressed: () {}, //_launchURLGithub,
            // ),
            // TextField(
            //   decoration: InputDecoration(
            //     //border: InputBorder.none,
            //     hintText: ("try some search?"),
            //   ),
            // ),
            // Checkbox(value: true, onChanged: (bool value) {}),
            // Radio<int>(value: 0, groupValue: 0, onChanged: (_) {}),
            // Switch(value: true, onChanged: (bool value) {}),
            Container(
              // onPressed: EthSyncUrl.launchURLFlutter,
              // onPressed: () => EthSyncUrl.launchBrowserTabKrakenEthEur,
              // onPressed: () async {
              // Navigator.push(
              // context,
              //  MaterialPageRoute(
              // builder: (context) => qrReader1()),
              // );s
              // },
              child: const Text('url flutter open'),
            ),
          ],
        ),
      ),
    );
    //  RaisedButton(
    //   onPressed: () async {
    //     Navigator.push(
    //       context,
    //        MaterialPageRoute(builder: (context) =>  ShareEthSync()),
    //     );
    //   },
    //   child:  Text('share this next text page ++'),
    // ),

    //  RaisedButton(
    //     child:  Text('Begin learning ethSync'),
    //     padding: EdgeInsets.all(20.0),
    //     onPressed: () {
    //       Navigator.push(
    //           context,
    //           MaterialPageRoute(
    //               builder: (context) =>  Pesto()));
    //     }),

    //  RaisedButton(
    //   onPressed: () async {
    //     Navigator.push(
    //       context,
    //        MaterialPageRoute(builder: (context) =>  QRMainScreen()),
    //     );
    //   },
    //   child:  Text('Show QR help'),
    // ),
  }
}
