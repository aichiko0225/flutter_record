import 'package:flutter/cupertino.dart';

class CupertinoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CupertinoPageState();
  }

}

class _CupertinoPageState extends State<CupertinoPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cupertino Demo"),
      ),
      child: Center(
        child: CupertinoButton(
          onPressed: () {
          },
          child: Text('Press'),
          color: CupertinoColors.activeBlue,
        ),
      ),
    );
  }

}