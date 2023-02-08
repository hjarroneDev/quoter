import 'package:contextmenu/contextmenu.dart';
import 'package:flutter/material.dart';

import '../MinMenu/mini_menu.dart';

class TextfieldIndex extends StatelessWidget {
  final int indexs;
  const TextfieldIndex({super.key, required this.indexs});

  @override
  Widget build(BuildContext context) {
    return ContextMenuArea(
      verticalPadding: 0,
      width: 160,
      builder: (BuildContext context) {
        return [
          MiniMenu(
            indexs: indexs,
          ),
        ];
      },
      child: TextField(
        readOnly: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: indexs.toString(),
          hoverColor: Colors.indigo.withOpacity(0.2),
          filled: true,
          fillColor: Colors.grey.shade300,
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 4, vertical: 9),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.indigo.shade400,
              width: 0.8,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black12,
            ),
          ),
        ),
      ),
    );
  }
}
