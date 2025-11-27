import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final String imagePath;
  final VoidCallback onTap;

  const NavBarItem({
    super.key,
    required this.index,
    required this.selectedIndex,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = selectedIndex == index;
    final color = isSelected ? Colors.pink : Colors.grey;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset(imagePath, width: 28, height: 28, color: color)],
      ),
    );
  }
}
