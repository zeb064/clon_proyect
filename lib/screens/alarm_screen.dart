import 'package:flutter/material.dart';
import '../widgets/alarm_card.dart';
import '../widgets/custom_bottom_nav.dart';

class AlarmScreen extends StatelessWidget {
  const AlarmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color bgColor = Color(0xFF1A1A1A);
    const Color textColor = Color(0xFFF5F5DC);
    const Color fabColor = Color(0xFF1A5C3A);

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: const [
                  SizedBox(height: 8),
                  AlarmCard(
                    days: 'Martes',
                    time: '6:00',
                    period: 'a. m.',
                    isEnabled: true,
                  ),
                  AlarmCard(
                    days: 'Lun mié',
                    time: '6:20',
                    period: 'a. m.',
                    isEnabled: true,
                  ),
                  AlarmCard(
                    days: 'Sin programar',
                    time: '6:56',
                    period: 'a. m.',
                    isEnabled: false,
                  ),
                  AlarmCard(
                    days: 'Jue vie',
                    time: '7:30',
                    period: 'a. m.',
                    isEnabled: true,
                  ),
                ],
              ),
            ),
            const CustomBottomNav(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: fabColor,
        foregroundColor: textColor,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        child: const Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Alarmas',
            style: TextStyle(
              color: Color(0xFFF5F5DC),
              fontSize: 28,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Icon(
            Icons.more_vert,
            color: Color(0xFFF5F5DC),
            size: 28,
          ),
        ],
      ),
    );
  }
}