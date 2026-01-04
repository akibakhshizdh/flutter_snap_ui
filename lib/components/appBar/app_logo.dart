import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snapp/constants/icons.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AppIcons.snapLogo, height: 22);
  }
}
