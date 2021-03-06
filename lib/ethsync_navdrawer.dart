import 'package:flutter/material.dart';
// import './ethsync_text.dart';
import './ethsync_urllinks.dart';
// import './ethsync_walletdrawer.dart';
import './ethsync_barcodescanner.dart';
// import './ethsync_extendedimage.dart';
// import './ethsync_scrollbar0.dart';
// import './ethsync_scrollbar1.dart';
import './ethsync_scrollbar2.dart';
// import './ethsync_scrollbar3.dart';
// import './ethsync_scrollbar4.dart';

String _kAsset0 = 'assets/images/devcon1.png';

class EthSyncNavDrawer extends StatelessWidget {
  const EthSyncNavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                image: AssetImage(_kAsset0),
              ),
            ),
            child: const Text(
              'wallet || drawer widget',
              style: TextStyle(
                  fontStyle: FontStyle.italic, color: Colors.yellowAccent),
            ),
          ),
          // DrawerTheme(data: Colors.blue, child: child)
          ListTile(
              leading: const Icon(
                Icons.account_balance,
                color: Colors.redAccent,
              ),
              title: const Text(
                'add eth|etc address - acccount',
                style: TextStyle(color: Colors.purpleAccent),
              ),
              subtitle: const Text(
                'personal firebase storage',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.redAccent),
              ),
              trailing: const Icon(Icons.add_alert, color: Colors.purpleAccent),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Scrollbar2()));
              }),
          ListTile(
              leading: const Icon(
                Icons.school,
                color: Colors.orangeAccent,
              ),
              title: const Text('begin learning ethSync',
                  style: TextStyle(color: Colors.orangeAccent)),
              subtitle: const Text(
                'proof of work||stake',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.blueAccent),
              ),
              trailing: const Icon(
                Icons.school,
                color: Colors.greenAccent,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Scrollbar2()));
                // context, MaterialPageRoute(builder: (context) => Pesto()));
                // context, MaterialPageRoute(builder: (context) => Pesto()));
              }),
          ListTile(
              leading: const Icon(
                Icons.account_balance,
                color: Colors.redAccent,
              ),
              title: const Text(
                'add eth|etc address - acccount',
                style: TextStyle(color: Colors.purpleAccent),
              ),
              subtitle: const Text(
                'personal firebase storage',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.redAccent),
              ),
              trailing: const Icon(Icons.add_alert, color: Colors.purpleAccent),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Scrollbar2()));
              }),
          ListTile(
              // leading:
              // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
              leading: const Icon(
                Icons.face,
                color: Colors.yellowAccent,
              ),
              title: const Text(
                'firebase chat',
                style: TextStyle(color: Colors.greenAccent),
              ),
              subtitle: const Text(
                'experimental firebase hookup',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.yellowAccent),
              ),
              trailing: const Icon(
                Icons.mail,
                color: Colors.greenAccent,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Scrollbar2()));
                // MaterialPageRoute(builder: (context) => FirebaseBaby()));
              }),
          ListTile(
              leading: const Icon(
                Icons.photo_album,
                color: Colors.orangeAccent,
              ),
              title: const Text(
                'photos grid list view',
                style: TextStyle(color: Colors.orangeAccent),
              ),
              subtitle: const Text(
                'photo gallery',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.blueAccent),
              ),
              trailing:
                  const Icon(Icons.camera_enhance, color: Colors.blueAccent),
              onTap: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Scrollbar2()),
                  // MaterialPageRoute(builder: (context) => GridListDemo()),
                );
              }),
          ListTile(
              leading: const Icon(
                Icons.person_outline,
                color: Colors.yellowAccent,
              ),
              title: const Text(
                'register: add name, email, ethAddress',
                style: TextStyle(color: Colors.yellowAccent),
              ),
              subtitle: const Text(
                'eth, etc, btc, addresses',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.greenAccent),
              ),
              trailing: const Icon(Icons.person_add, color: Colors.greenAccent),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Scrollbar2()));
                // builder: (context) => TextFormFieldDemo()));
              }),
          ListTile(
              leading: const Icon(
                Icons.send,
                color: Colors.redAccent,
              ),
              title: const Text(
                'show eth|etc addresss',
                style: TextStyle(color: Colors.purpleAccent),
              ),
              subtitle: const Text(
                'face to face QR codes',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.redAccent),
              ),
              trailing: const Icon(Icons.send, color: Colors.purpleAccent),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        // link to websites external if necessary
                        builder: (context) => const EthSyncBarcodeScan()));
                // MaterialPageRoute(builder: (context) => QRMainScreen()));
              }),
          ListTile(
              leading: const Icon(
                Icons.add_a_photo,
                color: Colors.orangeAccent,
              ),
              title: const Text(
                'capture eth|etc addresss',
                style: TextStyle(color: Colors.orangeAccent),
              ),
              subtitle: const Text(
                'launch camera and take QR addresses',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.blueAccent),
              ),
              trailing:
                  const Icon(Icons.camera_enhance, color: Colors.yellowAccent),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EthSyncBarcodeScan()));
              }),
          ListTile(
              leading: const Icon(Icons.launch, color: Colors.greenAccent),
              title: const Text(
                'Flutter.io website barcode scan',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.greenAccent),
              ),
              trailing: const Icon(Icons.launch, color: Colors.greenAccent),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EthSyncBarcodeScan()));
              }),
          const ListTile(
            leading: Icon(Icons.launch, color: Colors.purpleAccent),
            title: Text(
              'ethSync.xyz',
              style: TextStyle(
                  fontStyle: FontStyle.italic, color: Colors.purpleAccent),
            ),
            trailing: Icon(Icons.bookmark, color: Colors.orangeAccent),
            onTap: EthSyncLaunchUrl.launchURLEthSync,
          ),
          // ListTile(
          //     leading: const Icon(
          //       Icons.android,
          //       color: Colors.indigoAccent,
          //     ),
          //     title: const Text(
          //       '1st page --------',
          //       style: TextStyle(color: Colors.yellowAccent),
          //     ),
          //     onTap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => const Scrollbar2()));
          //       // MaterialPageRoute(builder: (context) => FirstScreen()));
          //     }),
          // ListTile(
          //     leading: const Icon(
          //       Icons.laptop_windows,
          //       color: Colors.pinkAccent,
          //     ),
          //     title: const Text(
          //       '2nd page ----------',
          //       style: TextStyle(color: Colors.tealAccent),
          //     ),
          //     onTap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => const Scrollbar2()));
          //       // MaterialPageRoute(builder: (context) => SecondScreen()));
          //     }),

          // ListTile(
          //     leading: const Icon(
          //       Icons.laptop_windows,
          //       color: Colors.tealAccent,
          //     ),
          //     trailing: const Icon(
          //       Icons.sync_disabled,
          //       color: Colors.tealAccent,
          //     ),
          //     title: const Text(
          //       'snackbar page',
          //       style: TextStyle(color: Colors.tealAccent),
          //     ),
          //     onTap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => const Scrollbar2()));
          //       // MaterialPageRoute(builder: (context) => SnackBarPage()));
          //     }),
          ListTile(
              leading: const Icon(
                Icons.accessibility,
                color: Colors.pinkAccent,
              ),
              trailing: const Icon(
                Icons.share,
                color: Colors.pinkAccent,
              ),
              title: const Text(
                'share this app',
                style: TextStyle(color: Colors.yellowAccent),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Scrollbar2()),
                  // MaterialPageRoute(builder: (context) => EthSyncShare()),
                );
              }),
          // ListTile(
          //     leading: const Icon(
          //       Icons.accessibility,
          //       color: Colors.pinkAccent,
          //     ),
          //     trailing: const Icon(
          //       Icons.share,
          //       color: Colors.pinkAccent,
          //     ),
          //     title: const Text(
          //       'try page for iamges',
          //       style: TextStyle(color: Colors.yellowAccent),
          //     ),
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => ImagePreview(
          //                 // assetFile: _kAsset0,
          //                 //  String imageUrsl, heroTag, title;
          //                 //  imageUrl = "www.yahoo.com",
          //                 //  heroTag = "heroTag1",
          //                 //  title = "1st expander",
          //                 )),
          //       );
          //     }),
          ListTile(
              leading: const Icon(
                Icons.accessibility,
                color: Colors.pinkAccent,
              ),
              trailing: const Icon(
                Icons.share,
                color: Colors.pinkAccent,
              ),
              title: const Text(
                'tok toasty',
                style: TextStyle(color: Colors.yellowAccent),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Scrollbar2(
                          // assetFile: _kAsset0,
                          //  String imageUrsl, heroTag, title;
                          //  imageUrl = "www.yahoo.com",
                          //  heroTag = "heroTag1",
                          //  title = "1st expander",
                          )),
                );
              }),
        ],
      ),
    );
  }
}
