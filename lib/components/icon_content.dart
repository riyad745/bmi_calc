import 'package:flutter/material.dart';
import '../screen/const.dart';


// ignore: must_be_immutable
class IconContent extends StatelessWidget {
  IconContent({super.key, this.icon, this.label});
  IconData? icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label!,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
