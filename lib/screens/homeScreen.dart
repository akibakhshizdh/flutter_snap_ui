import 'package:flutter/material.dart';
import 'package:snapp/constants/icons.dart';
import 'package:snapp/models/service_item.dart';
import 'package:snapp/widgets/serviceGridItem.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});
  final List<ServiceItem> services = const [
    ServiceItem(icon: AppIcons.intflight, title: 'بلیت سفر'),
    ServiceItem(icon: AppIcons.bike, title: "پیک"),
    ServiceItem(icon: AppIcons.bus, title: "وانت"),
    ServiceItem(icon: AppIcons.hotel, title: "هتل"),
    ServiceItem(icon: AppIcons.pickup, title: "پیک"),
    ServiceItem(icon: AppIcons.intflight, title: 'بلیت سفر'),
    ServiceItem(icon: AppIcons.bike, title: "پیک"),
    ServiceItem(icon: AppIcons.bus, title: "وانت"),
    ServiceItem(icon: AppIcons.hotel, title: "هتل"),
    ServiceItem(icon: AppIcons.pickup, title: "پیک"),
    ServiceItem(icon: AppIcons.bike, title: "پیک"),
    ServiceItem(icon: AppIcons.bus, title: "وانت"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 32,
                    ),
                    child: GridView.builder(
                      itemCount: services.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 22,
                            childAspectRatio: 0.85,
                          ),
                      itemBuilder: (context, index) {
                        return ServiceGridItem(item: services[index]);
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 32,
                    ),
                    child: GridView.builder(
                      itemCount: services.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 22,
                            childAspectRatio: 0.85,
                          ),
                      itemBuilder: (context, index) {
                        return ServiceGridItem(item: services[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 60, // ← فاصله از پایین (مثلاً 24 یا 32)
              left: 30,
              right: 30,
              child: _BottomServicesBox(),
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomServicesBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      borderRadius: BorderRadius.circular(20),
      color: Theme.of(context).colorScheme.surface,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: _ServiceItem(
                icon: Icons.motorcycle,
                title: 'اسنپ باکس',
                color: Colors.green,
              ),
            ),
            Expanded(
              child: _ServiceItem(
                icon: Icons.shopping_basket,
                title: 'سوپرمارکت',
                color: Colors.orange,
              ),
            ),
            Expanded(
              child: _ServiceItem(
                icon: Icons.restaurant,
                title: 'غذا',
                color: Colors.pink,
              ),
            ),
            Expanded(
              child: _ServiceItem(
                icon: Icons.directions_car,
                title: 'اسنپ',
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ServiceItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  const _ServiceItem({
    required this.icon,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          //padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withOpacity(0.15),

            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: color, size: 32),
        ),
        const SizedBox(height: 6),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontSize: 14),
          ),
        ),
      ],
    );
  }
}
