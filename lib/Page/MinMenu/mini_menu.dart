import 'package:flutter/material.dart';
import 'widget/menu_minA.dart';
import 'widget/text-Button.dart';

class MiniMenu extends StatefulWidget {
  const MiniMenu({
    super.key,
  });

  @override
  State<MiniMenu> createState() => _MiniMenuState();
}

class _MiniMenuState extends State<MiniMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        MiniMenuA(),
        Divider(
          height: 1,
          indent: 5,
          endIndent: 5,
        ),
        TextButtonMenu(
          context: 'New Row Above',
        ),
        Divider(
          height: 1,
          indent: 5,
          endIndent: 5,
        ),
        TextButtonMenu(
          context: 'New Row Below',
        ),
        Divider(
          height: 1,
          indent: 5,
          endIndent: 5,
        ),
      ],
    );
  }
}
