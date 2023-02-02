import 'package:flutter/material.dart';

import 'Page/dash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Quotation Draft',
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Dash(),
      ),
    );
  }
}
