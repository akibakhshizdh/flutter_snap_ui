import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:snapp/constants/icons.dart';
import 'package:snapp/widgets/tabItem.dart';

class MainTabbar extends StatelessWidget {
  final TabController controller;
  MainTabbar({super.key, required this.controller});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        height: 70,
        child: TabBar(
          controller: controller,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: const EdgeInsetsGeometry.symmetric(
            horizontal: -9,
            vertical: -11,
          ),

          tabs: [
            TabItem(
              title: "خانه",
              activeIcon: const Icon(AppIcons.activeHome),
              inactiveIcon: const Icon(AppIcons.home),
              index: 0,
              controller: controller,
            ),
            TabItem(
              title: 'اسنپ‌کلاب',
              index: 1,
              controller: controller,
              activeIcon: const ImageIcon(AssetImage(AppIcons.activeSnappClub)),
              inactiveIcon: const ImageIcon(AssetImage(AppIcons.snappClub)),
            ),
            TabItem(
              title: 'تخفیف‌ها',
              index: 2,
              controller: controller,
              activeIcon: const Icon(AppIcons.activeTag),
              inactiveIcon: const Icon(AppIcons.tag),
            ),
            TabItem(
              title: 'سفارش‌ها',
              index: 3,
              controller: controller,
              activeIcon: const Icon(AppIcons.activeShoppingCart),
              inactiveIcon: const Icon(AppIcons.shoppingCart),
            ),
          ],
        ),
      ),
    );
  }
}
