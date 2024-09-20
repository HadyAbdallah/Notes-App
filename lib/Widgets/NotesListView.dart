import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Widgets/NoteItem.dart';
import 'package:notes/cubits/NotesCubit/notes_cubit.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        if (state is NotesSuccess) {
          return Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ListView.builder(
                itemCount: state.notes.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: NoteItme(note: state.notes[index]),
                  );
                }),
          ));
        } else if (state is NotesFailure) {
          return Center(
            child: Text(state.message),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
