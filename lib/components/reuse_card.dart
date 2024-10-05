// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {
  ReuseCard({super.key, required this.colour,  this.cardChild});
  final Color colour;
   Widget? cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
