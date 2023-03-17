import 'package:flutter/material.dart';

class AddRemoveTextfield extends StatelessWidget {
  const AddRemoveTextfield({
    required this.hintText,
    required this.onPressedOnAdd,
    required this.onPressedOnRemove,
    super.key,
  });

  final String hintText;
  final VoidCallback onPressedOnAdd;
  final VoidCallback onPressedOnRemove;

  @override
  Widget build(BuildContext context) {
    // TODO(ask): How to change color of outline border?
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
        suffixIcon: IconButton(
          icon: const Icon(
            Icons.add,
            size: 32,
          ),
          onPressed: onPressedOnAdd,
        ),
        prefixIcon: IconButton(
          icon: const Icon(
            Icons.remove,
            size: 32,
          ),
          onPressed: onPressedOnRemove,
        ),
      ),
    );
  }
}
