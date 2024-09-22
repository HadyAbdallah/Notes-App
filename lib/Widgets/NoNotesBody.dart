import 'package:flutter/material.dart';

class NoNotesBody extends StatelessWidget {
  const NoNotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 150),
        Image.asset(
          'assets/note.png',
          width: 200,
        ),
        const SizedBox(height: 50),
        const Text(
          'No notes yet.',
          style: TextStyle(
            fontSize: 32,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Tap + to add a new note!',
          style: TextStyle(
            fontSize: 25,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
