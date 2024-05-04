import 'package:flutter/material.dart';
import  'icon_file.dart';
import 'Container_file.dart';
class RepeatContainerCode extends StatelessWidget {
  const RepeatContainerCode({
    super.key,
    required this.color,
    this.cardWidget = const SizedBox(),
  });

  final Color color;
  final Widget cardWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: cardWidget, // Ensuring the widget is not null
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}