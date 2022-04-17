import 'package:flutter/material.dart';
import './ethsync_text.dart';
import './ethsync_urllinks.dart';
import './ethsync_walletdrawer.dart';
import './ethsync_scrollbar0.dart';
import './ethsync_scrollbar1.dart';
import './ethsync_scrollbar2.dart';
import './ethsync_scrollbar3.dart';
import './ethsync_scrollbar4.dart';

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
                        builder: (context) => const EthSyncWalletDrawer()));
              }),
        ],
      ),
    );
  }
}
