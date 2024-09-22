import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Models/NoteModel.dart';
import 'package:notes/Views/EditNoteView.dart';
import 'package:notes/Widgets/ShowSnakBar.dart';
import 'package:notes/constants.dart';
import 'package:notes/cubits/NotesCubit/notes_cubit.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class NoteItme extends StatelessWidget {
  const NoteItme({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id, arguments: note);
      },
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.titel,
                  style: TextStyle(color: Colors.black, fontSize: 24)),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(note.contant,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5), fontSize: 18)),
              ),
              trailing: IconButton(
                onPressed: () {
                  deleteAlert(context, note);
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(note.date,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 16)),
            )
          ],
        ),
      ),
    );
  }
}

void deleteAlert(context, NoteModel note) {
  Alert(
    context: context,
    type: AlertType.warning,
    style: const AlertStyle(
      titleStyle: TextStyle(color: Colors.white),
    ),
    title: "Are you sure you want to delete this note?",
    buttons: [
      DialogButton(
        color: kPrimaryColor,
        onPressed: () {
          note.delete();
          BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          Navigator.pop(context);
        },
        width: 120,
        child: const Text(
          "Delete",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      )
    ],
  ).show();
}
