import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NavigationButtons extends StatelessWidget {
  const NavigationButtons({
    required this.onPressedOnNext,
    super.key,
  });

  final VoidCallback onPressedOnNext;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 6.h,
          width: 45.w,
          child: OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Back'),
          ),
        ),
        SizedBox(
          height: 6.h,
          width: 45.w,
          child: ElevatedButton(
            onPressed: onPressedOnNext,
            child: const Text('Next'),
          ),
        ),
      ],
    );
  }
}
