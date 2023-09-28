import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testriverpord/main.dart';

class ContenuHome extends ConsumerWidget {
  const ContenuHome({super.key});
  @override
  Widget build(context, ref) {
    final color = ref.watch(colorProvider);
    return Container(
      color: color,
      child: const Center(
        child: Text(
          'Contenu de l ecran',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}