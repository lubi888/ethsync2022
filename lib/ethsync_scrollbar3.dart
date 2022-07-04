import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
import './ethsync_text.dart';
// import './ethsync_urllinks.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter_native_web/flutter_native_web.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/foundation.dart';

// class Scrollbar3 extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<Scrollbar3> {
// // late moodifier no null safety
//   late WebController webController;
//   // WebController new WebController

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     FlutterNativeWeb flutterWebView = FlutterNativeWeb(
//       onWebCreated: onWebCreated,
//       gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
//         Factory<OneSequenceGestureRecognizer>(
//           () => TapGestureRecognizer(),
//         ),
//       ].toSet(),
//     );

//     return new MaterialApp(
//       home: new Scaffold(
//           appBar: new AppBar(
//             title: const Text('Native WebView as Widget'),
//           ),
//           body: new SingleChildScrollView(
//             child: new Column(
//               children: <Widget>[
//                 new Text('Native WebView as Widget\n\n'),
//                 new Container(
//                   child: flutterWebView,
//                   height: 300.0,
//                   width: 500.0,
//                 ),
//               ],
//             ),
//           )),
//     );
//   }

//   void onWebCreated(webController) {
//     this.webController = webController;
//     // this.webController.loadUrl("https://flutter.io/");
//     this
//         .webController
//         .loadUrl("https://trade.kraken.com/markets/kraken/eth/eur");
//     this.webController.onPageStarted.listen((url) => print("Loading $url"));
//     this
//         .webController
//         .onPageFinished
//         .listen((url) => print("Finished loading $url"));
//   }
// }

class Scrollbar3 extends StatelessWidget {
  const Scrollbar3({Key? key}) : super(key: key);

  // final String _kAsset2 = 'assets/images/go-download-website.png';
  @override
  Widget build(BuildContext context) {
    print('scrollbar3 loaded');

    return Scrollbar(
      child: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15.0),
            width: 300.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.yellow.shade500,
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            child: const SelectableText(
              // ethInstallGolangHeading,
              ethInstallGolandHeading,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 24.0,
              ),
            ),
          ),
          //container-intl-linkify
          Container(
            child: Linkify(
              onOpen: (link) async {
                if (await canLaunch(link.url)) {
                  await launch(link.url);
                } else {
                  throw 'Could not launch $link';
                }
              },
              // humanize: true,
              text: ethInstallGolandGoGetWebsite,
              // ethInstallGolangGoGetWebsite,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            child: Linkify(
              onOpen: (link) async {
                if (await canLaunch(link.url)) {
                  await launch(link.url);
                } else {
                  throw 'Could not launch $link';
                }
              },
              // humanize: true,
              text:
                  ethInstallGolandGoGetWebsite, //mist browser & dapp interface
              // ethInstallGolangGoGetWebsite,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
// // import 'package:flutter/material.dart';
// // import 'package:admob_flutter/admob_flutter.dart';
// // import 'dart:io';

// // class Scrollbar4 extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: "Admob test",
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text("Flutter admob test"),
// //         ),
// //         body: _buildListView(),
// //       ),
// //     );
// //   }

// //   Widget _buildListView() {
// //     final int size = 10;

// //     List<Widget> _children = List<Widget>.generate(
// //       size,
// //       (int index) => _buildListItem(text: "Index: $index"),
// //     );

// //     _children.insert(
// //       2,
// //       Padding(
// //         padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
// //         child: ClipRRect( // rounded corners ad.
// //           borderRadius: BorderRadius.circular(40.0),
// //           child: AdmobBanner(
// //             adUnitId: getBannerAdUnitId(),
// //             adSize: AdmobBannerSize.LEADERBOARD,
// //           ),
// //         ),
// //       ),
// //     );

// //     return ListView(
// //       children: _children,
// //     );
// //   }

// //   Widget _buildListItem({String text}) {
// //     return Container(
// //       width: double.infinity,
// //       height: 150,
// //       margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
// //       child: Card(
// //         color: Colors.indigo,
// //         child: Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: <Widget>[
// //               Text(
// //                 text,
// //                 style: TextStyle(
// //                   color: Colors.white,
// //                 ),
// //               ),
// //               Padding(padding: EdgeInsets.all(16)),
// //               Text(
// //                 "This is a test widget.",
// //                 style: TextStyle(fontSize: 18, color: Colors.white),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // String getAppId() {
// //   if (Platform.isIOS) {
// //     return 'ca-app-pub-3940256099942544~1458002511';
// //   } else if (Platform.isAndroid) {
// //     // return 'ca-app-pub-3940256099942544~3347511713';
// //     return 'ca-app-pub-8896805685360540~9518617434';
// //   }
// //   return null;
// // }

// // String getBannerAdUnitId() {
// //   if (Platform.isIOS) {
// //     return 'ca-app-pub-3940256099942544/2934735716';
// //   } else if (Platform.isAndroid) {
// //     // return 'ca-app-pub-3940256099942544/6300978111';
// //     return 'ca-app-pub-8896805685360540/2953209085';
// //   }
// //   return null;
// // }

// // webpage snippet working
// import 'package:flutter/material.dart';
// import 'package:flutter_native_web/flutter_native_web.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/foundation.dart';
// // import 'ethsync_urllinks.dart';
// // void main() => runApp(new MyApp());

// class Scrollbar4 extends StatefulWidget {
//   @override
//   _MyAppState createState() => new _MyAppState();
// }

// class _MyAppState extends State<Scrollbar4> {
//   WebController webController;

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     FlutterNativeWeb flutterWebView = new FlutterNativeWeb(
//       onWebCreated: onWebCreated,
//       gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
//         Factory<OneSequenceGestureRecognizer>(
//           () => TapGestureRecognizer(),
//         ),
//       ].toSet(),
//     );

//     return new MaterialApp(
//       home: new Scaffold(
//           appBar: new AppBar(
//             title: const Text('Native WebView as Widget'),
//           ),
//           body: new SingleChildScrollView(
//             child: new Column(
//               children: <Widget>[
//                 new Text('Native WebView as Widget\n\n'),
//                 new Container(
//                   child: flutterWebView,
//                   height: 300.0,
//                   width: 500.0,
//                 ),
//               ],
//             ),
//           )),
//     );
//   }

//   void onWebCreated(webController) {
//     this.webController = webController;
//     // this.webController.loadUrl("https://flutter.io/");
//     this
//         .webController
//         .loadUrl("https://trade.kraken.com/markets/kraken/eth/eur");
//     this.webController.onPageStarted.listen((url) => print("Loading $url"));
//     this
//         .webController
//         .onPageFinished
//         .listen((url) => print("Finished loading $url"));
//   }
// }

// //fonts yellow page
// // import 'package:flutter/material.dart';
// // import './ethsync_txt.dart';
// // import 'package:flutter_native_web/flutter_native_web.dart';

// // class Scrollbar4 extends StatelessWidget {
// //   final String urlSvgUsaQuiz =
// //       "https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/USStates.svg";
// //   final String usaSvgQuiz = "assets/USStates.svg";
// //   @override
// //   Widget build(BuildContext context) {
// //     print("scrollbar4 loaded");
// //     //print current locale
// //     Locale myLocale = Localizations.localeOf(context);
// //     print(myLocale.toString() + ' on Scrollbar4');

// //     return Scrollbar(
// //       child: Container(
// //         child: ListView(
// //           children: <Widget>[
// //             // Container(
// //             //   child: SvgPicture.network(urlSvgUsaQuiz,
// //             //       semanticsLabel: 'Acme Logo'),
// //             //   alignment: Alignment.center,
// //             // ),
// //             // Padding(
// //             //   padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
// //             // ),
// //             Text(
// //               "fonts",
// //               textAlign: TextAlign.center,
// //               style: TextStyle(
// //                 color: Colors.green,
// //                 fontSize: 40.0,
// //               ),
// //             ),
// //             Text(
// //               ethTextFonts,
// //               textAlign: TextAlign.center,
// //               style: TextStyle(
// //                 fontSize: 25.0,
// //                 color: Colors.redAccent.shade200,
// //               ),
// //             ),
// //           ],
// //         ),
// //         padding: const EdgeInsets.all(10.0),
// //         decoration: BoxDecoration(
// //           color: Colors.yellow.shade500,
// //           borderRadius: BorderRadius.all(Radius.circular(50.0)),
// //         ),
// //       ),
// //     );
// //   }
// // }

// 2019 import web view
