import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pattern_formatter/pattern_formatter.dart';

import 'textfield.dart';
import 'textfield_index.dart';

class RowBody extends StatefulWidget {
  final int indexRow;
  final String artigo;
  final int hscode;
  final int qty;
  final double unity;

  const RowBody(
      {super.key,
      required this.indexRow,
      required this.artigo,
      required this.hscode,
      required this.qty,
      required this.unity});

  @override
  State<RowBody> createState() => _RowBodyState();
}

class _RowBodyState extends State<RowBody> {
  @override
  Widget build(BuildContext context) {


    double fob = widget.qty * widget.unity;
    double frete = fob * 0.10;
    double seguro = (fob + frete) * 0.02;
    double outro = 1;
    double cif = fob + frete + seguro + outro;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 32, left: 2),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 33,
                  child: TextfieldIndex(
                    indexs: widget.indexRow,
                  )),
              TextFielder(
                maxLength: 10000000,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
                keyboardType: TextInputType.text,
                textAlign: TextAlign.start,
                readOnly: false,
                artigo: widget.artigo,
              ),
              SizedBox(
                width: 85,
                child: TextFielder(
                  maxLength: 8,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  readOnly: false,
                  artigo: widget.hscode.toString(),
                ),
              ),
              SizedBox(
                width: 85,
                child: TextFielder(
                  maxLength: 8,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  readOnly: false,
                  artigo: widget.qty.toString(),
                ),
              ),
              SizedBox(
                width: 120,
                child: TextFielder(
                  maxLength: 14,
                  inputFormatters: [
                    ThousandsFormatter(allowFraction: true),
                  ],
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  readOnly: false,
                  artigo: widget.unity.toStringAsFixed(2),
                ),
              ),
              SizedBox(
                width: 120,
                child: TextFielder(
                  maxLength: 50,
                  inputFormatters: [
                    ThousandsFormatter(allowFraction: true),
                  ],
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  readOnly: true,
                  artigo: fob.toStringAsFixed(2),
                ),
              ),
              SizedBox(
                width: 120,
                child: TextFielder(
                  maxLength: 50,
                  inputFormatters: [
                    ThousandsFormatter(allowFraction: true),
                  ],
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  readOnly: true,
                  artigo: frete.toStringAsFixed(2),
                ),
              ),
              SizedBox(
                width: 120,
                child: TextFielder(
                  maxLength: 50,
                  inputFormatters: [
                    ThousandsFormatter(allowFraction: true),
                  ],
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  readOnly: true,
                  artigo: seguro.toStringAsFixed(2),
                ),
              ),
              SizedBox(
                width: 120,
                child: TextFielder(
                  maxLength: 50,
                  inputFormatters: [
                    ThousandsFormatter(allowFraction: true),
                  ],
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  readOnly: true,
                  artigo: outro.toStringAsFixed(2),
                ),
              ),
              SizedBox(
                width: 120,
                child: TextFielder(
                  maxLength: 50,
                  inputFormatters: [
                    ThousandsFormatter(allowFraction: true),
                  ],
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  readOnly: true,
                  artigo: cif.toStringAsFixed(2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
