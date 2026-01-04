import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final VoidCallback onThemeToggle;

  const AppDrawer({super.key, required this.onThemeToggle});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            ListTile(
              leading: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
              title: const Text('حالت تاریک'),
              trailing: Switch(
                value: isDark,
                onChanged: (_) {
                  onThemeToggle();
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
