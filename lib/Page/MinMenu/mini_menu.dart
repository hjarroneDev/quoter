import 'package:flutter/material.dart';
import 'widget/menu_minA.dart';
import 'widget/text-Button.dart';

class MiniMenu extends StatefulWidget {
  final int indexs;
  const MiniMenu({
    super.key,
    required this.indexs,
  });

  @override
  State<MiniMenu> createState() => _MiniMenuState();
}

class _MiniMenuState extends State<MiniMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MiniMenuA(
          indexs: widget.indexs,
        ),
        const Divider(
          height: 1,
          indent: 3,
          endIndent: 3,
        ),
        TextButtonMenu(
          context: 'New Row',
          indexs: widget.indexs,
        ),
      ],
    );
  }
}
