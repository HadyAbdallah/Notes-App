import 'package:flutter/material.dart';
import 'package:notes/Widgets/CustomButton.dart';
import 'package:notes/Widgets/CustomTextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: 16,
          left: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: "Title",
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: "Contant",
              maxlines: 5,
            ),
            SizedBox(
              height: 32,
            ),
            CustomButton(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
