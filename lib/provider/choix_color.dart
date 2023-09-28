import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testriverpord/main.dart';

class ChoixColors extends ConsumerWidget {
  final Color currentColor;
  ChoixColors({super.key, required this.currentColor});
  final List<Color> colorOptions = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.black,
  ];
  @override
  Widget build(context, ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (final color in colorOptions)
          GestureDetector(
            onTap: () async {
              ref.read(colorProvider.notifier).state = color;
              Navigator.pop(context);
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: color,
                border: color == currentColor
                    ? Border.all(width: 2, color: Colors.black)
                    : null,
              ),
            ),
          ),
      ],
    );
  }
}
