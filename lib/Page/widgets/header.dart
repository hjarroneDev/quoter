import 'package:flutter/material.dart';

import 'button.dart';
import 'colum_header.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey.shade300,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                child: ColumHeader(
                  content: 'ARTIGOS',
                  width: double.infinity,
                ),
              ),
              ColumHeader(
                content: 'HS CODE',
                width: 85,
              ),
              ColumHeader(
                content: 'QTY',
                width: 85,
              ),
              ColumHeader(
                content: 'UNITY',
                width: 120,
              ),
              ColumHeader(
                content: 'FOB',
                width: 120,
              ),
              ColumHeader(
                content: 'FRETE',
                width: 120,
              ),
              ColumHeader(
                content: 'SEGURO',
                width: 120,
              ),
              ColumHeader(
                content: 'OUTROS',
                width: 120,
              ),
              ColumHeader(
                content: 'CIF',
                width: 120,
              ),
              SizedBox(
                width: 5,
              ),
              Button(
                path: 'assets/icons/dashboard.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
