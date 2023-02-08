import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quoter/Provider/list.dart';

import 'textfield_menu.dart';

class TextButtonMenu extends StatefulWidget {
  final String context;
  final int indexs;

  const TextButtonMenu(
      {super.key, required this.context, required this.indexs});

  @override
  State<TextButtonMenu> createState() => _TextButtonMenuState();
}

class _TextButtonMenuState extends State<TextButtonMenu> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: (() {
              context.read<Mylist>().isertRow(widget.indexs, '', 0, 0, 0);
              Navigator.of(context).pop();
            }),
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(
                Colors.indigo.shade100.withOpacity(0.3),
              ),
            ),
            child: Text(
              widget.context,
              style: TextStyle(
                  color: Colors.indigo.shade300,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        const TextFieldMenuMini(),
      ],
    );
  }
}
