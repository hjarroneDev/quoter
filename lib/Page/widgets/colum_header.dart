import 'package:flutter/material.dart';

class ColumHeader extends StatelessWidget {
  final double width;
  final String content;
  const ColumHeader({super.key, required this.width, required this.content});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: width,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              content,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.indigo.shade300),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Divider(
                indent: 2,
                endIndent: 2,
                color: Colors.indigo.shade200,
                height: 1.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
