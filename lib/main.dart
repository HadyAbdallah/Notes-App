import 'package:flutter/material.dart';
import 'package:notes/Views/NotesView.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: {NotesView.id: (context) => const NotesView()},
      initialRoute: NotesView.id,
      home: const NotesView(),
    );
  }
}
