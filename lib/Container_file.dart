import 'package:flutter/material.dart';
import 'constantFile.dart';
import 'package:flutter/material.dart';

class ContainerRepeated extends StatelessWidget {
  final Color colors;
  final Widget cardWidget;
  final VoidCallback onPressed; // Correct type for onPressed

  ContainerRepeated({
    required this.colors,
    required this.cardWidget,
    required this.onPressed, // Declaring onPressed as required
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardWidget,
      ),
    );
  }
}
