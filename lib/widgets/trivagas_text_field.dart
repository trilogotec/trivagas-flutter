import 'package:flutter/material.dart';

class TrivagasTextField extends StatelessWidget {
  final String label;
  final String hint;

  TrivagasTextField({
    this.label,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:
                BorderSide(color: Theme.of(context).primaryColor, width: 3.0)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey[400], width: 3.0)),
        hintText: hint,
        labelText: label,
      ),
    );
  }
}
