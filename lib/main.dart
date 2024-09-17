import 'package:flutter/material.dart';
import 'package:notes/Views/NotesView.dart';

import 'Views/EditNoteView.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        NotesView.id: (context) => const NotesView(),
        EditNoteView.id: (context) => const EditNoteView()
      },
      initialRoute: NotesView.id,
      home: const NotesView(),
    );
  }
}
