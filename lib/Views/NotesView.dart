import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Widgets/AddNoteBottomSheet.dart';
import 'package:notes/constants.dart';
import 'package:notes/cubits/NotesCubit/notes_cubit.dart';

import '../Widgets/NotesViewBody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        body: const NotesViewBody(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
