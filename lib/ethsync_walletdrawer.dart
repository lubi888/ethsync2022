import 'package:flutter/material.dart';

const String _kAsset0 = 'assets/images/etceth-asia.jpg';
const String _kAsset1 = 'assets/images/ethBullet.png';
const String _kAsset2 = 'assets/images/etcBullet.png';

class EthSyncWalletDrawer extends StatefulWidget {
  const EthSyncWalletDrawer({Key? key}) : super(key: key);

  @override
  _EthSyncWalletDrawerState createState() => _EthSyncWalletDrawerState();
}

class _EthSyncWalletDrawerState extends State<EthSyncWalletDrawer>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  static const List<String> _drawerContents = <String>[
    'ETH',
    'eth',
    'etc',
    '\u039E',
    '\u0E3F',
    '\u20AC',
    '\$',
    '\u00A3',
    '\u25C7',
    '\u2665'
  ];

  late AnimationController _controller;
  late Animation<double> _drawerContentsOpacity;
  late Animation<Offset> _drawerDetailsPosition;
  bool _showDrawerContents = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _drawerContentsOpacity = CurvedAnimation(
      parent: ReverseAnimation(_controller),
      curve: Curves.fastOutSlowIn,
    );
    _drawerDetailsPosition = Tween<Offset>(
      begin: const Offset(0.0, -1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  IconData _backIcon() {
    switch (Theme.of(context).platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return Icons.arrow_back;
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return Icons.arrow_back_ios;
    }
    assert(false);
    // return null;
  }

  void _showNotImplementedMessage() {
    Navigator.pop(context); // Dismiss the drawer.
    _scaffoldKey.currentState!.showSnackBar(const SnackBar(
        // ScaffoldMessenger.showSnackBar(const SnackBar(
        content: Text(
            "The drawer's items don't do anything at the momemnt but this is ready to upgrade")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(_backIcon()),
          alignment: Alignment.centerLeft,
          //  backgroundColor: Colors.black,
          tooltip: 'Back',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Eth & Etc Wallets in Drawer'),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text('wallet drawer||Widget'),
              accountEmail: const Text('support@lu.com'),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage(
                  _kAsset0,
                ),
              ),
              otherAccountsPictures: <Widget>[
                GestureDetector(
                  onTap: () {
                    _onOtherAccountsTap(context);
                  },
                  child: Semantics(
                    label: 'Switch to Account B',
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(
                        _kAsset1,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _onOtherAccountsTap(context);
                  },
                  child: Semantics(
                    label: 'Switch to Account C',
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(
                        _kAsset2,
                      ),
                    ),
                  ),
                ),
              ],
              margin: EdgeInsets.zero,
              onDetailsPressed: () {
                _showDrawerContents = !_showDrawerContents;
                if (_showDrawerContents) {
                  _controller.reverse();
                } else {
                  _controller.forward();
                }
              },
            ),
            MediaQuery.removePadding(
              context: context,
              // DrawerHeader consumes top MediaQuery padding.
              removeTop: true,
              child: Expanded(
                child: ListView(
                  padding: const EdgeInsets.only(top: 8.0),
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        // The initial contents of the drawer.
                        FadeTransition(
                          opacity: _drawerContentsOpacity,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: _drawerContents.map((String id) {
                              return ListTile(
                                leading: CircleAvatar(child: Text(id)),
                                title: Text('Drawer item $id'),
                                onTap: _showNotImplementedMessage,
                              );
                            }).toList(),
                          ),
                        ),

                        // The drawer's "details" view.
                        SlideTransition(
                          position: _drawerDetailsPosition,
                          child: FadeTransition(
                            opacity: ReverseAnimation(_drawerContentsOpacity),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                ListTile(
                                  leading: const Icon(Icons.add),
                                  title: const Text(
                                      'Add ETH, ETC, Bitcoin account'),
                                  onTap: _showNotImplementedMessage,
                                ),
                                ListTile(
                                  leading: const Icon(Icons.settings),
                                  title: const Text('Manage ETH accounts'),
                                  onTap: _showNotImplementedMessage,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 100.0,
                height: 100.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      _kAsset0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Tap here to open the drawer\nCheck balances'
                  '\nCopy addresses\n\n\nUse Firebase for OAuth &&||syncing?',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onOtherAccountsTap(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Account switching not implemented.'),
          actions: <Widget>[
            FlatButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
