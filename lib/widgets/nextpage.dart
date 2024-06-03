import 'package:flutter/material.dart';

class RectangleButton extends StatelessWidget {
  const RectangleButton({
    super.key,
    required this.onPressed,
    required this.label,
  });
  final VoidCallback? onPressed;
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: SizedBox(
          height: 50,
          width: double.infinity,
          child: Card(
            color: onPressed != null
                ? Colors.orange.shade600
                : Colors.orange.shade300,
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                    letterSpacing: 2, fontSize: 25, color: Colors.black),
              ),
            ),
          ),
        ));
  }
}
