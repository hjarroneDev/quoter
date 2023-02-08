import 'package:flutter/material.dart';

import 'iconBut.dart';

class MiniMenuA extends StatelessWidget {
  final int indexs;
  const MiniMenuA({super.key, required this.indexs});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButon(iconContent: Icon(Icons.content_cut_rounded), indexs: indexs),
        IconButon(
            iconContent: Icon(Icons.content_copy_rounded), indexs: indexs),
        IconButon(
            iconContent: Icon(Icons.content_paste_rounded), indexs: indexs),
        IconButon(iconContent: Icon(Icons.delete_rounded), indexs: indexs),
      ],
    );
  }
}
