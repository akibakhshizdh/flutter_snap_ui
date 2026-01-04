import 'package:flutter/material.dart';
import 'package:snapp/components/appBar/app_logo.dart';
import 'package:snapp/components/appBar/pro_badge.dart';
import 'package:snapp/components/custom_icon_button.dart';
import 'package:snapp/constants/icons.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onMenuPressed;
  final VoidCallback onThemeToggle;

  const CustomAppbar({
    super.key,
    required this.onMenuPressed,
    required this.onThemeToggle,
    //required toggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      //surfaceTintColor: Colors.transparent,
      leading: Builder(
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CustomIconButton(
              icon: AppIcons.menu,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          );
        },
      ),
      title: ProBadge(),
      actions: const [
        Padding(padding: EdgeInsets.only(right: 25), child: AppLogo()),
      ],

      //
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
