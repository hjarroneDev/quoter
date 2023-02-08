import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldMenuMini extends StatefulWidget {
  const TextFieldMenuMini({
    super.key,
  });

  @override
  State<TextFieldMenuMini> createState() => _TextFieldMenuMiniState();
}

class _TextFieldMenuMiniState extends State<TextFieldMenuMini> {
  TextEditingController textFieldontroler = TextEditingController(text: '1');
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 3),
      child: SizedBox(
        height: 25,
        width: 35,
        child: TextField(
          controller: textFieldontroler,
          textAlign: TextAlign.center,
          maxLength: 3,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            counterText: '',
            hoverColor: Colors.indigo.withOpacity(0.2),
            filled: true,
            fillColor: Colors.indigo.shade100,
            isDense: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 2, vertical: 9),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.indigo.shade400,
                width: 0.8,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
