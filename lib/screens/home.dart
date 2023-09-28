import 'package:flutter/material.dart';
import 'package:testriverpord/provider/contenu_home.dart';
import 'package:testriverpord/provider/parametre_color.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Coucou Riverpod Changes couleurs"),
        ),
        body: const Center(
          child: ContenuHome(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ParametreColors()),
            );
          },
          child: const Icon(Icons.settings),
        ));
  }
}
