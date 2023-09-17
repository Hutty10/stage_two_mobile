import 'package:flutter/material.dart';

class LabelTextField extends StatelessWidget {
  const LabelTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
    this.initialValue,
    this.maxLength,
    this.keyboardType,
    this.textInputAction,
  });
  final TextEditingController controller;
  final String label;
  final String hintText;
  final String? initialValue;
  final int? maxLength;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 4),
        SizedBox(
          height: maxLength == null ? 48 : null,
          child: TextFormField(
            controller: controller,
            initialValue: initialValue,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            maxLength: maxLength,
            maxLines: maxLength == null ? 1 : 3,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle:
                  theme.textTheme.labelSmall?.copyWith(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
