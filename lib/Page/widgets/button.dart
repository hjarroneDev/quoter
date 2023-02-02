import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String path;
  const Button({super.key, required this.path});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  Color back = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        onTap: (() {}),
        child: Container(
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: back,
            image: DecorationImage(
              opacity: 0.8,
              image: AssetImage(widget.path),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
