import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Provider/list.dart';

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
        onTap: (() {
          context.read<Mylist>().newRow('', 0, 0, 0);
        }),
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
