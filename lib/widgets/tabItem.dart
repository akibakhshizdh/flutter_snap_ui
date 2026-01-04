import 'package:flutter/material.dart';

// ignore: unused_element
class TabItem extends StatelessWidget {
  final String title;
  final Widget inactiveIcon;
  final Widget activeIcon;
  // final bool isAsset;
  final int index;
  final TabController controller;

  TabItem({
    required this.title,
    required this.inactiveIcon,
    required this.activeIcon,
    //required this.isAsset,
    required this.index,
    required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    final bool isActive = controller.index == index;

    return Column(
      children: [
        isActive ? activeIcon : inactiveIcon,
        const SizedBox(height: 4),
        Text(title),
      ],
    );
  }
}
