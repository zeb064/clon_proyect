import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    const Color bgColor = Color(0xFF1A1A1A);
    const Color selectedColor = Color(0xFFF5F5DC);
    const Color unselectedColor = Color(0xFF666666);

    final List<_NavItem> items = [
      _NavItem(Icons.alarm, 'Alarmas', true),
      _NavItem(Icons.public, 'Reloj...', false),
      _NavItem(Icons.hourglass_empty, 'Tempo...', false),
      _NavItem(Icons.timer, 'Cronó...', false),
      _NavItem(Icons.bedtime, 'Hora d...', false),
    ];

    return Container(
      height: 68,
      color: bgColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items.map((item) {
          return Expanded(
            child: InkWell(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    item.icon,
                    color: item.isSelected ? selectedColor : unselectedColor,
                    size: 24,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    item.label,
                    style: TextStyle(
                      color: item.isSelected ? selectedColor : unselectedColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _NavItem {
  final IconData icon;
  final String label;
  final bool isSelected;

  _NavItem(this.icon, this.label, this.isSelected);
}