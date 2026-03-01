import 'package:flutter/material.dart';
import 'package:coach_marks/consts/color.dart';

class ChipWidget extends StatelessWidget {
  final bool selected;
  final String label;
  const ChipWidget({super.key, this.selected = false, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: selected ? AppColors.gradientStart : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(color: selected ? Colors.white : AppColors.textPrimary),
      ),
    );
  }
}