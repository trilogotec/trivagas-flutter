import 'package:flutter/material.dart';

enum TrivagasButtonColor { primary, secondary }

class TrivagasButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final TrivagasButtonColor themeColor;

  TrivagasButton(
    this.label, {
    @required this.onPressed,
    this.themeColor,
  });

  getThemeColor(BuildContext context) {
    switch (themeColor) {
      case TrivagasButtonColor.primary:
        return Theme.of(context).primaryColor;
      case TrivagasButtonColor.secondary:
        return Colors.grey[400];
      default:
        return Theme.of(context).primaryColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: getThemeColor(context),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
