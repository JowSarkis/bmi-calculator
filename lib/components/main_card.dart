import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final Color cardColor;
  final cardChild;
  final Function onPress;

  MainCard({@required this.cardColor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onPress,
      child: Container(
        height: 200,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: this.cardColor,
        ),
        child: cardChild,
      ),
    );
  }
}
