import 'package:flutter/material.dart';

import '../Widgets/EditNoteViewBody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = "EditNoteView";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteViewBody(),
    );
  }
}
