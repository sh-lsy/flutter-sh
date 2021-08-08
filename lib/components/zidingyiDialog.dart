import 'dart:async';

import 'package:flutter/material.dart';

class ZiDialog extends Dialog {
  _showTimer(context) {
    Timer.periodic(Duration(milliseconds: 3000), (t) {
      print(context);
      // if (context != null) {
      //   Navigator.pop(context);
      // }
      Navigator.pop(context);
      t.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.lightBlue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
