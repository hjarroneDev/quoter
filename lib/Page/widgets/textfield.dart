import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFielder extends StatefulWidget {
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType keyboardType;
  final TextAlign textAlign;
  final bool readOnly;
  final int maxLength;

  final String artigo;

  const TextFielder({
    super.key,
    required this.maxLength,
    required this.inputFormatters,
    required this.keyboardType,
    required this.textAlign,
    required this.readOnly,
    required this.artigo,
  });

  @override
  State<TextFielder> createState() => _TextFielderState();
}

class _TextFielderState extends State<TextFielder> {
  TextEditingController textFieldontroler = TextEditingController();

  @override
  void initState() {
    textFieldontroler =
        TextEditingController(text: widget.artigo); //default text
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        readOnly: widget.readOnly,
        inputFormatters: widget.inputFormatters,
        keyboardType: widget.keyboardType,
        maxLength: widget.maxLength,
        controller: textFieldontroler,
        textAlign: widget.textAlign,
        decoration: InputDecoration(
          counterText: '',
          hoverColor: Colors.indigo.withOpacity(0.1),
          filled: true,
          fillColor: Colors.grey.shade200,
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 4, vertical: 9),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.indigo.shade200,
              width: 1.35,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black12,
            ),
          ),
        ),
      ),
    );
  }
}
