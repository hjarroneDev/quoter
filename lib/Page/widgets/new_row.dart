import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewRow extends StatelessWidget {
  const NewRow({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {}),
      child: const Icon(
        Icons.add_box_rounded,
        size: 30,
      ),
    );
  }
}
