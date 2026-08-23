import 'package:flutter/material.dart';

class AlarmCard extends StatefulWidget {
  final String days;
  final String time;
  final String period;
  final bool isEnabled;
  final VoidCallback? onToggle;

  const AlarmCard({
    super.key,
    required this.days,
    required this.time,
    required this.period,
    required this.isEnabled,
    this.onToggle,
  });

  @override
  State<AlarmCard> createState() => _AlarmCardState();
}

class _AlarmCardState extends State<AlarmCard> {
  late bool _isEnabled;

  @override
  void initState() {
    super.initState();
    _isEnabled = widget.isEnabled;
  }

  @override
  Widget build(BuildContext context) {
    final Color cardColor = _isEnabled ? const Color(0xFF4A4A00) : const Color(0xFF2A2A2A);
    final Color textColor = _isEnabled ? const Color(0xFFF5F5DC) : const Color(0xFF999999);
    final Color switchActiveColor = const Color(0xFFF5F5DC);
    final Color switchInactiveColor = const Color(0xFF666666);
    final Color switchTrackColor = _isEnabled ? const Color(0xFFF5F5DC) : const Color(0xFF666666);

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(22),
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.days,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      widget.time,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 52,
                        fontWeight: FontWeight.w300,
                        height: 1.0,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        widget.period,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Switch(
            value: _isEnabled,
            onChanged: (value) {
              setState(() {
                _isEnabled = value;
              });
              widget.onToggle?.call();
            },
            activeThumbColor: switchActiveColor,
            activeTrackColor: switchTrackColor.withValues(alpha: 0.5),
            inactiveThumbColor: switchInactiveColor,
            inactiveTrackColor: switchInactiveColor.withValues(alpha: 0.3),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ],
      ),
    );
  }
}