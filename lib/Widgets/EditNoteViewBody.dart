import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Models/NoteModel.dart';
import 'package:notes/Widgets/CustomAppBar.dart';
import 'package:notes/Widgets/CustomTextField.dart';
import 'package:notes/Widgets/EditColorListView.dart';
import 'package:notes/Widgets/ShowSnakBar.dart';
import 'package:notes/cubits/NotesCubit/notes_cubit.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, contant;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onIconPressed: () {
              widget.note.titel = title ?? widget.note.titel;
              widget.note.contant = contant ?? widget.note.contant;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              ShowSnakBar(context, "The note was Updated successfully");
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            text: widget.note.titel,
            onChanged: (data) {
              title = data;
            },
            hint: "Title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            text: widget.note.contant,
            onChanged: (data) {
              contant = data;
            },
            hint: "Content",
            maxlines: 5,
          ),
          const SizedBox(
            height: 16,
          ),
          EditColorsListView(note: widget.note),
        ],
      ),
    );
  }
}
