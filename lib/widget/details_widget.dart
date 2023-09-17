import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details(
      {super.key, required this.text, this.icon, this.image, this.width});

  final IconData? icon;
  final String text;
  final String? image;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        icon != null
            ? Icon(
                icon,
                size: 24,
                color: theme.primaryColor,
              )
            : Image.asset(
                image!,
                height: 24,
                width: 24,
                fit: BoxFit.cover,
                // color: theme.primaryColor,
              ),
        const SizedBox(width: 8),
        SizedBox(
          width: width,
          child: Text(
            text,
            style: theme.textTheme.bodySmall
                ?.copyWith(color: theme.primaryColor, fontSize: 14),
            overflow: TextOverflow.clip,
          ),
        ),
      ],
    );
  }
}
