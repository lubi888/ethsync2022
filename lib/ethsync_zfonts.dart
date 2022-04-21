import 'package:flutter/material.dart';

class ZFonts extends StatelessWidget {
  String ethTextFonts =
      "\u03BB \n\tgreek lambda \n\u1688 \n\togham tinne \n\u304B \n\tjapanese ka \n\u4E07 \n\tcjk ideograph 10,000"
      "\n\u4DC1 \n\tiching \n\u1300 \n\tethiopic symbol \n\u{13080} \n\tegyptian eye";

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Container(
        child: ListView(
          children: <Widget>[
            const Text(
              "fonts",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green,
                fontSize: 40.0,
              ),
            ),
            Text(
              ethTextFonts,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.redAccent.shade200,
              ),
            ),
          ],
        ),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.yellow.shade500,
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
        ),
      ),
    );
  }
}
