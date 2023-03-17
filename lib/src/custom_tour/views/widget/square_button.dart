import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_tips/src/core/presentation/widgets/spacing.dart';

class SquareButton extends StatelessWidget {
  const SquareButton({
    required this.title,
    required this.icon,
    required this.selected,
    required this.onTap,
    super.key,
  });

  final String title;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 18.h,
        width: 36.w,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: selected ? Colors.tealAccent : Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48,
            ),
            const Spacing(),
            Text(title),
          ],
        ),
      ),
    );
  }
}
