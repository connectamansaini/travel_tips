import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/colors.dart';

class KChoiceChips extends StatefulWidget {
  final List<String> item;
  const KChoiceChips({super.key, required this.item});

  @override
  State<KChoiceChips> createState() => _KChoiceChipsState();
}

class _KChoiceChipsState extends State<KChoiceChips> {
  int _choiceIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.item.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 4),
            child: ChoiceChip(
              label: Text(
                widget.item[index],
                style: TextStyle(
                  color: _choiceIndex == index ? Colors.white : Colors.black,
                ),
              ),
              selected: _choiceIndex == index,
              selectedColor: AppColors.primaryColor,
              onSelected: (bool selected) {
                setState(() {
                  _choiceIndex = selected ? index : 0;
                });
              },
              backgroundColor: Colors.transparent,
              labelStyle: const TextStyle(color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
