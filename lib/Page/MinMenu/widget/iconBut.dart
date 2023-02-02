import 'package:flutter/material.dart';

class IconButon extends StatefulWidget {
  final Icon iconContent;
  const IconButon({super.key, required this.iconContent});

  @override
  State<IconButon> createState() => _IconButonState();
}

class _IconButonState extends State<IconButon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: widget.iconContent,
      iconSize: 20,
      splashRadius: 20,
      hoverColor: Colors.indigo.shade100.withOpacity(0.5),
      color: Colors.black45,
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}
