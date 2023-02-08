import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quoter/Provider/list.dart';

import 'widgets/row_body.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  
 

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
          itemCount: context.watch<Mylist>().draft.length,
          itemBuilder: (context, index) {
            return RowBody(
              indexRow: index + 1,
              artigo: context.watch<Mylist>().draft[index][0],
              hscode: context.watch<Mylist>().draft[index][1],
              qty: context.watch<Mylist>().draft[index][2],
              unity: context.watch<Mylist>().draft[index][3],
            );
          },
        ),
      ),
    ));
  }
}
