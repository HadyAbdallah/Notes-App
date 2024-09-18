import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/Models/NoteModel.dart';
import 'package:notes/SimpleBlocObserver.dart';
import 'package:notes/Views/NotesView.dart';
import 'package:notes/constants.dart';
import 'package:notes/cubits/AddNoteCubit/add_note_cubit.dart';

import 'Views/EditNoteView.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
