import 'package:flutter/material.dart';

// import 'dart:html';
const double kToolbarHeight = 80.0;

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
      print('Home clicked');
      break;
    case 'Profile':
      print('Profile clicked');
      break;
    case 'Setting':
      print('Playtime setting clicked');
      break;
    case 'Privacy':
      print('Privacy cliked');
      break;
    case 'Contact':
      print('Contact clicked');
      break;
    case 'Ethereum Website':
      print('this is where we connect to the net ethereum webite');
      //url launcher
      break;
  }
}

class EthSyncAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    print("ethsync appbar loaded");
    print(TimeOfDay.now());
    // print(T);
    return AppBar(
        centerTitle: false,
        title: Text("ethsync2022.04.05"),
        bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.home, color: Colors.redAccent)),
          Tab(icon: Icon(Icons.code, color: Colors.amberAccent)),
          Tab(icon: Icon(Icons.laptop, color: Colors.greenAccent)),
          Tab(icon: Icon(Icons.school, color: Colors.limeAccent)),
          Tab(icon: Icon(Icons.dangerous, color: Colors.red[200])),
        ]),
        actions: <Widget>[
          // Icon(Icons.search),
          PopupMenuButton<String>(
              //brger menu
              icon: Icon(Icons.more_horiz_outlined), //verticle menu
              onSelected: onSelect,
              itemBuilder: (BuildContext context) {
                return myMenuItems.map((String choice) {
                  return PopupMenuItem<String>(
                    child: Text(choice),
                    value: choice,
                  );
                }).toList();
              }),
          PopupMenuItem(
            child: const Icon(Icons.home, color: Colors.redAccent),
            // onTap: (),
          ),
        ]);
    // build(context)
    // PopupMenuButton<EthSyncAppBarEntries>(itemBuilder:
    // (BuildContext context) => <PopupMenuEntry<EthSyncAppBarEntries>>
    // [
    //   PopupMenuItem<EthSyncAppBarEntries>(child: const Text('hello item')),
    // // ],
    // const PopupMenuDivider(),
    // PopupMenuItem(
    //   child: Icon(Icons.link, color: Colors.greenAccent),
    // ),
    // PopupMenuItem(
    //   child: Icon(Icons.find_in_page, color: Colors.orange),
    // ),
    // PopupMenuItem(
    //   child: const Icon(Icons.home, color: Colors.redAccent),
    // ),
    // PopupMenuItem(
    //   child: const Text('ethereum website'),
    //   //https://www.ethereum.org/
    // ),
    throw UnimplementedError();
  }

  @override
  // TODO: implement preferredSize
  // Size get preferredSize => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
