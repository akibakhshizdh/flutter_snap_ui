import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snapp/models/service_item.dart';

class ServiceGridItem extends StatelessWidget {
  final ServiceItem item;

  const ServiceGridItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(item.icon, width: 48, height: 48),
        const SizedBox(height: 6),
        Text(
          item.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }
}
