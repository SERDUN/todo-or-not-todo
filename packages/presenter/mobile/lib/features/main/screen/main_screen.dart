import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: navigationShell.goBranch,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_outlined), label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: navigationShell,
    );
  }
}
