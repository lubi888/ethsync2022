import 'package:flutter/material.dart';
import 'package:async/async.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import './ethsync_text.dart';
import './ethsync_urllinks.dart';

class Scrollbar1 extends StatelessWidget {
  // const Scrollbar0({ Key? key }) : super(key: key);
  //   Locale myLocale = Localizations.localeOf(context);
  // print(myLocale.toString() + ' on Scrollbar2');

  // final String _kAsset2 = 'assets/images/images/go-download-website.png';
  // final String _kAsset3 = 'assets/images/footer-gopher.jpg';
  // final String _kAsset4 = 'assets/images/images/go-env.png';

  final String _kAsset2 = 'assets/images/go-download-website.png';
  final String _kAsset3 = 'assets/images/footer-gopher.jpg';
  final String _kAsset4 = 'assets/images/go-env.png';
  final String _kAsset5 = 'assets/images/go-3-folders.png';
  final String _kAsset6 = 'assets/images/go-hello.png';
  final String _kAsset7 = 'assets/images/go-build-install.png';
  final String _kAsset8 = 'assets/images/geth-web.png';
  final String _kAsset9 = 'assets/images/gethdl-os.png';
  final String _kAssets10 = 'assets/images/geth-install-help.png';
  // final String _kAssets11 = 'assets/images/geth-command-help.png';
  final String _kAssets12 = 'assets/images/go-help-1.png';
  final String _kAssets13 = 'assets/images/go-help-2.png';
  final String _kAssets14 = 'assets/images/go-build-run-local.png';
  final String _kAssets15 = 'assets/images/go-install-systemwide.png';
  final String _kAssets16 = 'assets/images/github-go-ethereum-list.png';
  final String _kAssets17 = 'assets/images/which-geth-list.png';
  final String _kAssets18 = 'assets/images/geth-help-1.png';
  final String _kAssets19 = 'assets/images/geth-help-2.png';
  final String _kAssets20 = 'assets/images/geth-help-3.png';
  final String _kAssets21 = 'assets/images/geth-help-4.png';
  final String _kAssets22 = 'assets/images/geth-help-5.png';
  final String _kAssets23 = 'assets/images/geth-help-6.png';
  final String _kAssets24 = 'assets/images/geth-syncmode-begin.png';
  final String _kAssets25 = 'assets/images/geth-blockchain-p2p.png';
  final String _kAssets26 = 'assets/images/ethsync-complete-closed.png';
  final String _kAssets27 = 'assets/images/blockchain-size.png';

  // final String url = 'https://media.giphy.com/media/1MH245qhEF5bG/giphy.gif';

  @override
  Widget build(BuildContext context) {
    print('scrollbar1 loaded');

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
            child: Text(
              // EthSyncLocalizations.of(context).ethInstallGolangHeading,
              ethInstallGolandHeading,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red.shade300,
                fontStyle: FontStyle.italic,
                fontSize: 24.0,
              ),
            ),
          ),
          // //container-intl-linkify
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
              // EthSyncLocalizations.of(context).ethInstallGolangGoGetWebsite,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
          ),
          // Container(
          Container(
            child: Image.asset(
              _kAsset3,
              height: 100.0,
              width: 200.0,
            ),
            // onPressed: EthSyncUrl.launchURLGolangOrgDL,
            // onPressed: EthSyncUrl.launchURLGolangOrgDL(),
          ),
          Container(
            child: Image.asset(
              _kAsset2,
              height: 200.0,
              width: 300.0,
            ),
            // onPressed: EthSyncUrl.launchURLGolangOrgDL,
            // // onPressed: EthSyncUrl.launchURLGolangOrgDL(),
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
              text: ethInstallGolangInstallInstructions,
              // humanize: true,
              // text: EthSyncLocalizations.of(context)
              //     .ethInstallGolangInstallInstructions,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            child: const Text(
              ethCheckGoHelp,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            child: Image.asset(
              _kAssets12,
              // height: 200.0,
              // width: 300.0,
            ),
            // onPressed: () async {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => EthsyncExpandImage(
            //               image: _kAssets12,
            //               title: "\'go help\' 1",
            //             )),
            //   );
            // },
          ),
          Container(
            child: Image.asset(
              _kAssets13,
              // height: 200.0,
              // width: 300.0,
            ),
            // onPressed: () async {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => EthsyncExpandImage(
            //               image: _kAssets13,
            //               title: "\'go help\' 2",
            //             )),
            //   );
            // },
          ),
          Container(
            child: const Text(
              ethCheckGoEnv,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            child: Image.asset(
              _kAsset4,
              // height: 200.0,
              // width: 300.0,
            ),
            // onPressed: () {},
            // onPressed: () async {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => EthsyncExpandImage(
            //               image: _kAsset4,
            //               title: "\'go env\'",
            //             )),
            //   );
            // },
          ),
          Container(
            child: const Text(
              ethCheckGoPath3Folders,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            child: Image.asset(
              _kAsset5,
              // height: 200.0,
              // width: 300.0,
            ),
            // onPressed: () async {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => EthsyncExpandImage(
            //               image: _kAsset5,
            //               title: "GOPATH: bin, pkg, src",
            //             )),
            //   );
            // },
          ),
          //heading Golang Test Installation -----------------------------------------------
          Container(
            padding: const EdgeInsets.all(15.0),
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.yellow.shade500,
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            child: Text(
              ethGolangTestHeading,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red.shade300,
                fontStyle: FontStyle.italic,
                fontSize: 24.0,
              ),
            ),
          ),
          Container(
            child: const Text(
              ethGoTestYourInstallation,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            child: Text(
              ethGoHello,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.blue,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            child: Image.asset(
              _kAsset6,
              // height: 200.0,
              // width: 300.0,
            ),
            // onPressed: () async {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => EthsyncExpandImage(
            //               image: _kAsset6,
            //               title: "go\/src\/hello.go",
            //             )),
            //   );
            // },
          ),
          //container-intl-linkify
          Container(
            child: const Text(
              ethGoBuild,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            child: Image.asset(
              _kAsset7,
              // height: 200.0,
              // width: 300.0,
            ),
            // onPressed: () async {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => EthsyncExpandImage(
            //               image: _kAsset7,
            //               title: "webpage: go build, go install",
            //             )),
            //   );
            // },
          ),
          Container(
            child: Image.asset(
              _kAssets14,
              // height: 200.0,
              // width: 300.0,
            ),
            // onPressed: () async {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => EthsyncExpandImage(
            //               image: _kAssets14,
            //               title: "go build local install",
            //             )),
            //   );
            // },
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
              text: ethGoInstall,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            child: Image.asset(
              _kAssets15,
              // height: 200.0,
              // width: 300.0,
            ),
            // onPressed: () async {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => EthsyncExpandImage(
            //               image: _kAssets15,
            //               title: "go install systemwide",
            //             )),
            // );
            // },
          ),
          //heading Geth  --------------------------------------------
          // Container(
          //   padding: const EdgeInsets.all(15.0),
          //   width: 60.0,
          //   height: 60.0,
          //   decoration: BoxDecoration(
          //     shape: BoxShape.rectangle,
          //     color: Colors.yellow.shade500,
          //     borderRadius: BorderRadius.all(Radius.circular(50.0)),
          //   ),
          //   child: Text(
          //     EthSyncLocalizations.of(context).ethInstallGethHeading,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: Colors.red.shade300,
          //       fontStyle: FontStyle.italic,
          //       fontSize: 24.0,
          //     ),
          //   ),
          // ),
          // Container(
          //   child: Linkify(
          //     onOpen: (link) async {
          //       if (await canLaunch(link.url)) {
          //         await launch(link.url);
          //       } else {
          //         throw 'Could not launch $link';
          //       }
          //     },
          //     humanize: true,
          //     text: EthSyncLocalizations.of(context).ethGethWebsite,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: Colors.red,
          //       fontStyle: FontStyle.italic,
          //       fontSize: 20.0,
          //     ),
          //   ),
          // ),
          // Container(
          //   child: Linkify(
          //     onOpen: (link) async {
          //       if (await canLaunch(link.url)) {
          //         await launch(link.url);
          //       } else {
          //         throw 'Could not launch $link';
          //       }
          //     },
          //     humanize: true,
          //     text: EthSyncLocalizations.of(context)
          //         .ethGethWebsite3Implementations,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: Colors.red,
          //       fontStyle: FontStyle.italic,
          //       fontSize: 20.0,
          //     ),
          //   ),
          // ),
          // Container(
          //   child: Image.asset(
          //     _kAsset8,
          //     height: 200.0,
          //     width: 300.0,
          //   ),
          //   onPressed: EthSyncUrl.launchURLGethWeb,
          // ),
          // Container(
          //   child: Linkify(
          //     onOpen: (link) async {
          //       if (await canLaunch(link.url)) {
          //         await launch(link.url);
          //       } else {
          //         throw 'Could not launch $link';
          //       }
          //     },
          //     humanize: true,
          //     text: EthSyncLocalizations.of(context).ethGethWebsiteInstall,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: Colors.red,
          //       fontStyle: FontStyle.italic,
          //       fontSize: 20.0,
          //     ),
          //   ),
          // ),
          // Container(
          //   child: Image.asset(
          //     _kAsset9,
          //     height: 120.0,
          //     width: 300.0,
          //   ),
          //   onPressed: EthSyncUrl.launchURLGethWebDL,
          //   // onPressed: EthSyncUrl.launchURLGolangOrgDL(),
          // ),
          // Container(
          //   child: Linkify(
          //     onOpen: (link) async {
          //       if (await canLaunch(link.url)) {
          //         await launch(link.url);
          //       } else {
          //         throw 'Could not launch $link';
          //       }
          //     },
          //     humanize: true,
          //     text: EthSyncLocalizations.of(context).ethGethWebsiteInstallHelp,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: Colors.red,
          //       fontStyle: FontStyle.italic,
          //       fontSize: 20.0,
          //     ),
          //   ),
          // ),
          // Container(
          //   child: Image.asset(
          //     _kAssets10,
          //     height: 200.0,
          //     width: 300.0,
          //   ),
          //   onPressed: EthSyncUrl.launchURLGethWebInstall,
          // ),
          // Container(
          //   child: Text(
          //     EthSyncLocalizations.of(context)
          //         .ethGethWebsiteManyImplementations,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: Colors.red,
          //       fontStyle: FontStyle.italic,
          //       fontSize: 20.0,
          //     ),
          //   ),
          // ),
          // Container(
          //   child: Linkify(
          //     onOpen: (link) async {
          //       if (await canLaunch(link.url)) {
          //         await launch(link.url);
          //       } else {
          //         throw 'Could not launch $link';
          //       }
          //     },
          //     humanize: true,
          //     text: EthSyncLocalizations.of(context).ethGithubGoEthereumList,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: Colors.red,
          //       fontStyle: FontStyle.italic,
          //       fontSize: 20.0,
          //     ),
          //   ),
          // ),
          // Container(
          //   child: Image.asset(
          //     _kAssets16,
          //     // height: 200.0,
          //     // width: 300.0,
          //   ),
          //   onPressed: () async {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => EthsyncExpandImage(
          //                 image: _kAssets16,
          //                 title: "\\src\\github.com\\ethereum\\go-ethereum",
          //               )),
          //     );
          //   },
          // ),
          // Container(
          //   child: Text(
          //     EthSyncLocalizations.of(context).ethGethVersion,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: Colors.red,
          //       fontStyle: FontStyle.italic,
          //       fontSize: 20.0,
          //     ),
          //   ),
          // ),
          // Container(
          //   child: Text(
          //     EthSyncLocalizations.of(context).ethWhichGethList,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: Colors.red,
          //       fontStyle: FontStyle.italic,
          //       fontSize: 20.0,
          //     ),
          //   ),
          // ),
          // Container(
          //   child: Image.asset(
          //     _kAssets17,
          //     // height: 200.0,
          //     // width: 300.0,
          //   ),
          //   onPressed: () async {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => EthsyncExpandImage(
          //                 image: _kAssets17,
          //                 title: "\'which geth\' list",
          //               )),
          //     );
          //   },
          // ),
          // Container(
          //   child: Text(
          //     EthSyncLocalizations.of(context).ethGethHelp,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: Colors.red,
          //       fontStyle: FontStyle.italic,
          //       fontSize: 20.0,
          //     ),
          //   ),
          // ),
          // Container(
          //   child: Image.asset(
          //     _kAssets18,
          //     // height: 200.0,
          //     // width: 300.0,
          //   ),
          //   onPressed: () async {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => EthsyncExpandImage(
          //                 image: _kAssets18,
          //                 title: "\'geth help\' 1",
          //               )),
          //     );
          //   },
          // ),
          // Container(
          //   child: Image.asset(
          //     _kAssets19,
          //     // height: 200.0,
          //     // width: 300.0,
          //   ),
          //   onPressed: () async {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => EthsyncExpandImage(
          //                 image: _kAssets19,
          //                 title: "\'geth help\' 2",
          //               )),
          //     );
          //   },
          // ),
          // Container(
          //   child: Image.asset(
          //     _kAssets20,
          //     // height: 200.0,
          //     // width: 300.0,
          //   ),
          //   onPressed: () async {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => EthsyncExpandImage(
          //                 image: _kAssets20,
          //                 title: "\'geth help\' 3",
          //               )),
          //     );
          //   },
          // ),
          // Container(
          //   child: Image.asset(
          //     _kAssets21,
          //     // height: 200.0,
          //     // width: 300.0,
          //   ),
          //   onPressed: () async {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => EthsyncExpandImage(
          //                 image: _kAssets21,
          //                 title: "\'geth help\' 4",
          //               )),
          //     );
          //   },
          // ),
          // Container(
          //   child: Image.asset(
          //     _kAssets22,
          //     // height: 200.0,
          //     // width: 300.0,
          //   ),
          //   onPressed: () async {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => EthsyncExpandImage(
          //                 image: _kAssets22,
          //                 title: "\'geth help\' 5",
          //               )),
          //     );
          //   },
          // ),
          // Container(
          //   child: Image.asset(
          //     _kAssets23,
          //     // height: 200.0,
          //     // width: 300.0,
          //   ),
          //   onPressed: () async {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => EthsyncExpandImage(
          //                 image: _kAssets23,
          //                 title: "\'geth help\' 6",
          //               )),
          //     );
          //   },
          // ),
          // //run geth - synchronise ethereum blockchain heading   -----------------------------------------------------
          // Container(
          //   padding: const EdgeInsets.all(15.0),
          //   width: 60.0,
          //   height: 90.0,
          //   decoration: BoxDecoration(
          //     shape: BoxShape.rectangle,
          //     color: Colors.yellow.shade500,
          //     borderRadius: BorderRadius.all(Radius.circular(50.0)),
          //   ),
          //   child: Text(
          //     EthSyncLocalizations.of(context).ethGethRunHeading,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: Colors.red.shade300,
          //       fontStyle: FontStyle.italic,
          //       fontSize: 24.0,
          //     ),
          //   ),
          // ),
          // // Container(
          // //   child: Text(
          // //     EthSyncLocalizations.of(context).ethGethCommandHelp,
          // //     textAlign: TextAlign.center,
          // //     style: TextStyle(
          // //       color: Colors.red,
          // //       fontStyle: FontStyle.italic,
          // //       fontSize: 20.0,
          // //     ),
          // //   ),
          // // ),
          // Container(
          //   child: Linkify(
          //     onOpen: (link) async {
          //       if (await canLaunch(link.url)) {
          //         await launch(link.url);
          //       } else {
          //         throw 'Could not launch $link';
          //       }
          //     },
          //     humanize: true,
          //     text: EthSyncLocalizations.of(context)
          //         .ethGethWebsite3Implementations,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: Colors.red,
          //       fontStyle: FontStyle.italic,
          //       fontSize: 20.0,
          //     ),
          //   ),
          // ),
          // Container(
          //   child: Text(
          //     EthSyncLocalizations.of(context).ethGethSyncmodeLight,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: Colors.red,
          //       fontStyle: FontStyle.italic,
          //       fontSize: 20.0,
          //     ),
          //   ),
          // ),
          // Container(
          //   child: Image.asset(
          //     _kAssets24,
          //     // height: 200.0,
          //     // width: 300.0,
          //   ),
          //   onPressed: () async {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => EthsyncExpandImage(
          //                 image: _kAssets24,
          //                 title: "geth --syncmode light --cache=2048",
          //               )),
          //     );
          //   },
          // ),
          // Container(
          //   child: Text(
          //     EthSyncLocalizations.of(context).ethGethBlockchainSyncing,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: Colors.red,
          //       fontStyle: FontStyle.italic,
          //       fontSize: 20.0,
          //     ),
          //   ),
          // ),
          // Container(
          //   child: Image.asset(
          //     _kAssets25,
          //     // height: 200.0,
          //     // width: 300.0,
          //   ),
          //   onPressed: () async {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => EthsyncExpandImage(
          //                 image: _kAssets25,
          //                 title: "geth bloackchain p2p syncing",
          //               )),
          //     );
          //   },
          // ),
          // Container(
          //   child: Text(
          //     EthSyncLocalizations.of(context)
          //         .ethGethSyncingCompletedDisconnected,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: Colors.red,
          //       fontStyle: FontStyle.italic,
          //       fontSize: 20.0,
          //     ),
          //   ),
          // ),
          // Container(
          //   child: Image.asset(
          //     _kAssets26,
          //     // height: 200.0,
          //     // width: 300.0,
          //   ),
          //   onPressed: () async {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => EthsyncExpandImage(
          //                 image: _kAssets26,
          //                 title: "ethereum syncing completed, disconnected",
          //               )),
          //     );
          //   },
          // ),
          // Container(
          //   child: Text(
          //     EthSyncLocalizations.of(context).ethGethBlockchainLocation,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: Colors.red,
          //       fontStyle: FontStyle.italic,
          //       fontSize: 20.0,
          //     ),
          //   ),
          // ),
          // Container(
          //   child: Image.asset(
          //     _kAssets27,
          //     // height: 200.0,
          //     // width: 300.0,
          //   ),
          //   onPressed: () async {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => EthsyncExpandImage(
          //                 image: _kAssets27,
          //                 title: "blockchain location and size",
          //               )),
          //     );
          //   },
          // ),
          // Container(
          //   width: 150.0,
          //   height: 200.0,
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     image: DecorationImage(
          //       image: AssetImage(_kAsset1),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}