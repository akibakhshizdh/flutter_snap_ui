import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final double size;

  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.size = 27.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconColor = Theme.of(context).iconTheme.color;

    return IconButton(
      icon: Icon(icon, color: iconColor, size: size),
      onPressed: onPressed,
    );
  }
}
