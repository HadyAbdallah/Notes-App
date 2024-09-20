import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Widgets/CustomAppBar.dart';
import 'package:notes/cubits/NotesCubit/notes_cubit.dart';
import 'NotesListView.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomAppBar(
              title: 'Notes',
              icon: Icons.search,
            ),
            NotesListView(),
          ],
        ),
      ),
    );
  }
}
