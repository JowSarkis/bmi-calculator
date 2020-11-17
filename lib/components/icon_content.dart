import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';


class MaleFemaleIcons extends StatelessWidget {
  final IconData genderIcon;
  final String genderText;

  MaleFemaleIcons({@required this.genderIcon, @required this.genderText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          genderText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}



