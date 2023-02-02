import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'body.dart';
import 'widgets/header.dart';

class Dash extends StatefulWidget {
  const Dash({super.key});

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.indigo.shade100,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Header(),
              Body(),
            ]),
      ),
    );
  }
}
