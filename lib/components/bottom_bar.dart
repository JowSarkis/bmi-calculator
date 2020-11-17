import 'package:flutter/cupertino.dart';

import '../constants.dart';

class BottomBar extends StatelessWidget {
  final String barTitle;

  BottomBar({@required this.barTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      color: kBottomContainerColor,
      margin: EdgeInsets.only(top: 10.0),
      child: Center(
        child: Text(
          this.barTitle,
          style: kBottomContainerTextStyle,
        ),
      ),
    );
  }
}
