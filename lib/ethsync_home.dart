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

    return TabBarView(children: [
      const Scrollbar0(),
      Scrollbar1(),
      const Scrollbar2(),
      const Scrollbar3(),
      const Scrollbar4(),
    ]);
  }
}
