import 'package:flutter/material.dart';
import 'package:notes/Widgets/CustomAppBar.dart';
import 'NotesListView.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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
