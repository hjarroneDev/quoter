import 'package:flutter/material.dart';

import 'widgets/row_body.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List draft = [
    ['MANNEQUIN(FEMALE)', 96180000, 4, 88.20],
    ['MANNEQUIN(MALE)', 96180000, 2, 102.90],
    ['SCARF STAND', 94038900, 1, 29.40],
    ['RAILS', 94038900, 20, 117.60]
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(
        right: 5,
        left: 5,
        bottom: 5,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: ListView.builder(
          itemCount: draft.length,
          itemBuilder: (context, index) {
            return RowBody(
              indexRow: index + 1,
              artigo: draft[index][0],
              hscode: draft[index][1],
              qty: draft[index][2],
              unity: draft[index][3],
            );
          },
        ),
      ),
    ));
  }
}
