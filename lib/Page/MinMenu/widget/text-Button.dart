import 'package:flutter/material.dart';

import 'textfield_menu.dart';

class TextButtonMenu extends StatefulWidget {
  final String context;

  const TextButtonMenu({super.key, required this.context});

  @override
  State<TextButtonMenu> createState() => _TextButtonMenuState();
}

class _TextButtonMenuState extends State<TextButtonMenu> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: (() {
            Navigator.of(context).pop();
          }),
          child: Row(
            children: [
              Text(
                widget.context,
                style: TextStyle(
                    color: Colors.indigo.shade200,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        const TextFieldMenuMini(),
      ],
    );
  }
}
