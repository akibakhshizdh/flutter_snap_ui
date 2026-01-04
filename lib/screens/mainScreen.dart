import 'package:flutter/material.dart';
import 'package:snapp/components/appBar/custom_appbar.dart';
import 'package:snapp/constants/icons.dart';
import 'package:snapp/screens/homeScreen.dart';
import 'package:snapp/widgets/app_drawer.dart';

class MainScreen extends StatefulWidget {
  final VoidCallback toggleTheme;

  const MainScreen({super.key, required this.toggleTheme});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      // rebuild shodan icons
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(onThemeToggle: widget.toggleTheme),
      appBar: CustomAppbar(
        onMenuPressed: () {},
        onThemeToggle: widget.toggleTheme,
      ),

      body: Column(
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              // باعث میشه بیرون نزنه .محدودیت ایجاد میکنه
              child: Container(
                height: 70,
                //color: Colors.amber,
                child: TabBar(
                  labelPadding: EdgeInsetsDirectional.all(0),
                  //ایندیکیتور به اندازه تب باشه یا محتوا
                  indicatorSize: TabBarIndicatorSize.tab,
                  //فاصله ایندیکیتور از لبه ها.منفی بدیم بزرگتر میشه
                  indicatorPadding: const EdgeInsetsGeometry.symmetric(
                    horizontal: -9,
                    vertical: -11,
                  ),
                  controller: _tabController,

                  tabs: [
                    _buildTab(
                      isActive: _tabController.index == 0,
                      activeIcon: Icon(AppIcons.activeHome),
                      inActiveIcon: Icon(AppIcons.home),
                      title: "خانه",
                    ),
                    _buildTab(
                      isActive: _tabController.index == 1,
                      activeIcon: ImageIcon(
                        AssetImage(AppIcons.activeSnappClub),
                      ),
                      inActiveIcon: ImageIcon(AssetImage(AppIcons.snappClub)),
                      title: 'اسنپ\u200Cکلاب',
                    ),
                    _buildTab(
                      isActive: _tabController.index == 2,
                      activeIcon: Icon(AppIcons.activeTag),
                      inActiveIcon: Icon(AppIcons.tag),
                      title: 'تخفیف\u200Cها',
                    ),

                    _buildTab(
                      isActive: _tabController.index == 3,
                      activeIcon: const Icon(AppIcons.activeShoppingCart),
                      inActiveIcon: const Icon(AppIcons.shoppingCart),
                      title: 'سفارش\u200Cها',
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Homescreen(),
                Center(child: Text('صفحه اسنپ کلاب')),
                Center(child: Text('صفحه تخفیف ها')),
                Center(child: Text('صفحه سفارش ها')),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab({
    required bool isActive,
    required Widget activeIcon,
    required Widget inActiveIcon,
    required String title,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [isActive ? activeIcon : inActiveIcon, Text(title)],
    );
  }
}
