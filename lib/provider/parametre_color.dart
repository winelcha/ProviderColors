import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testriverpord/main.dart';
import 'package:testriverpord/provider/choix_color.dart';


class ParametreColors extends ConsumerWidget {
  const ParametreColors({super.key});

  @override
  Widget build(context, ref) {
    final currentColor = ref.watch(colorProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parametres'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Selectionner une couleur ",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          ChoixColors(
            currentColor: currentColor,
          )
        ],
      )),
    );
  }
}
