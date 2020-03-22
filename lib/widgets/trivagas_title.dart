import 'package:flutter/material.dart';

enum TrivagasTitleSize { h1, h2, h3, h4, h5, h6 }

class TrivagasTitle extends StatelessWidget {
  final String title;
  final TrivagasTitleSize size;
  final Color color;

  TrivagasTitle(
    this.title, {
    this.size,
    this.color,
  });

  double get fontSize {
    switch (size) {
      case TrivagasTitleSize.h1:
        return 36;
      case TrivagasTitleSize.h2:
        return 32;
      case TrivagasTitleSize.h3:
        return 28;
      case TrivagasTitleSize.h4:
        return 22;
      case TrivagasTitleSize.h5:
        return 18;
      case TrivagasTitleSize.h6:
        return 16;
      default:
        return 32;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color ?? Colors.black87,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}
