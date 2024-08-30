import 'package:flutter/material.dart';

class Fab extends StatefulWidget {
  const Fab({super.key});

  @override
  State<Fab> createState() => _FabState();
}

class _FabState extends State<Fab> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 113, 112, 108),
          foregroundColor: Colors.white,
          child: const Icon(Icons.add_circle),
          onPressed: () {
            Navigator.pushNamed(context, '/addTafera');
          },
        );
  }
}