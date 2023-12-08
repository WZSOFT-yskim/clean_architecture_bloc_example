import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({
    super.key,
    required this.iconData,
    required this.function,
  });

  final IconData iconData;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.amber,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(
            iconData,
            size: 40,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
