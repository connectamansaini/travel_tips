import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SelectDateView extends StatelessWidget {
  const SelectDateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Dates',
        ),
        automaticallyImplyLeading: false,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 20.h,
            width: 45.w,
            child: OutlinedButton.icon(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  currentDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2025),
                );
              },
              icon: const Icon(Icons.dataset),
              label: const Text('Date Decided'),
            ),
          ),
        ],
      ),
    );
  }
}
