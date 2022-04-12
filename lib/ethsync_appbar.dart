import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

// import 'dart:html';
const double kToolbarHeight = 100.0;

var myMenuItems = <String>[
  'Home',
  'Profile',
  'Setting',
  'Privacy',
  'Contact',
  'Ethereum Website',
];

void onSelect(item) {
  switch (item) {
    case 'Home':
      print('Home clicked for ethscyc homepage');
      break;
    // case 'Profile':
    //   print('Profile clicked');
    //   break;
    // case 'Setting':
    //   print('Playtime setting clicked');
    //   break;
    // case 'Privacy':
    //   print('Privacy cliked');
    //   break;
    // case 'Contact':
    //   print('Contact clicked');
    //   break;
    case 'Ethereum Website':
      print('this is where we connect to the net ethereum webite');
      //url launcher
      break;
  }
}

// implements PreferredSizeWidget?
class EthSyncAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    print("ethsync appbar loaded");
    print(TimeOfDay.now());
    // print(T);
    return AppBar(
        centerTitle: false,
        title: Text("ethsync2022.04.10"),
        bottom: TabBar(tabs: [
          const Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text('home'),
              ),
              icon: Icon(Icons.home, color: Colors.redAccent)),
          const Tab(
            icon: Icon(Icons.code, color: Colors.amberAccent),
            child: Align(
              alignment: Alignment.center,
              child: Text('code'),
            ),
          ),
          const Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text('online presence'),
              ),
              icon: Icon(Icons.laptop, color: Colors.greenAccent)),
          const Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text('learning more'),
              ),
              icon: Icon(Icons.school, color: Colors.limeAccent)),
          Tab(
              child: const Align(
                alignment: Alignment.center,
                child: Text('danger experimental software'),
              ),
              icon: Icon(Icons.dangerous, color: Colors.red[200])),
        ]),
        actions: <Widget>[
          // Icon(Icons.search),
          PopupMenuButton<String>(
            icon: Icon(Icons.lunch_dining), //verticle menu
            onSelected: onSelect,
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                  value: "Home",
                  child: Linkify(
                      onOpen: (link) async {
                        if (await canLaunch(link.url)) {
                          await launch(link.url);
                        } else {
                          throw 'Could not launch $link';
                        }
                      },
                      // humanize: true,
                      text: 'https://www.ethSync.org')),
              const PopupMenuItem(
                child: Text("beta"),
                value: "Ethereum Website",
              ),
              PopupMenuItem(
                child: Linkify(
                    onOpen: (link) async {
                      if (await canLaunch(link.url)) {
                        await launch(link.url);
                      } else {
                        throw 'Could not launch $link';
                      }
                    },
                    // humanize: true,
                    // text: EthSyncUrl.launchURLFlutter,
                    text: 'https://www.ethereum.org'),
              ),
              PopupMenuItem(
                child: Linkify(
                    onOpen: (link) async {
                      if (await canLaunch(link.url)) {
                        await launch(link.url);
                      } else {
                        throw 'Could not launch $link';
                      }
                    },
                    // humanize: true,
                    text: 'https://ethereum.stackexchange.com/'),
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                child: Linkify(
                    onOpen: (link) async {
                      if (await canLaunch(link.url)) {
                        await launch(link.url);
                      } else {
                        throw 'Could not launch $link';
                      }
                    },
                    text: 'https://geth.ethereum.org/'),
              ),
              PopupMenuItem(
                child: Linkify(
                    onOpen: (link) async {
                      if (await canLaunch(link.url)) {
                        await launch(link.url);
                      } else {
                        throw 'Could not launch $link';
                      }
                    },
                    text: 'https://github.com/ethereum/go-ethereum'),
              ),
              const PopupMenuDivider(
                height: 4.0,
              ),
              PopupMenuItem(
                child: Linkify(
                    onOpen: (link) async {
                      if (await canLaunch(link.url)) {
                        await launch(link.url);
                      } else {
                        throw 'Could not launch $link';
                      }
                    },
                    text: 'https://en.wikipedia.org/wiki/Ethereum'),
              ),
              PopupMenuItem(
                child: Icon(Icons.settings, color: Colors.redAccent),
              ),
              PopupMenuItem(
                child: const Text('Settings'),
              ),
              PopupMenuItem(
                child: const Text('French : Francais : FR'),
              ),
              PopupMenuItem(
                child: const Text('German : Deutsch : DE'),
              ),
              PopupMenuItem(
                child: Linkify(
                    onOpen: (link) async {
                      if (await canLaunch(link.url)) {
                        await launch(link.url);
                      } else {
                        throw 'Could not launch $link';
                      }
                    },
                    // humanize: true,
                    text: 'https://ethsync2022.org/'),
              ),
            ],
          ),
        ]);
  }

  @override
  // TODO: implement preferredSize
  // Size get preferredSize => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
