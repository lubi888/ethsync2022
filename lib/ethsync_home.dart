import 'package:flutter/material.dart';

import './ethsync_scrollbar0.dart';
import './ethsync_scrollbar1.dart';
import './ethsync_scrollbar2.dart';
import './ethsync_scrollbar3.dart';
import './ethsync_scrollbar4.dart';

class EthSyncHome extends StatelessWidget {
  const EthSyncHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('EthSyncHomePage loaded');

    return const TabBarView(children: [
      Scrollbar0(),
      Scrollbar1(),
      Scrollbar2(),
      Scrollbar3(),
      Scrollbar4(),
    ]);
  }
}
