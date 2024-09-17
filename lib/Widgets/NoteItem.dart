import 'package:flutter/material.dart';
import 'package:notes/Views/EditNoteView.dart';

class NoteItme extends StatelessWidget {
  const NoteItme({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 246, 176, 97),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text("Flutte Tips",
                  style: TextStyle(color: Colors.black, fontSize: 24)),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text("Build your career",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5), fontSize: 18)),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text("May 21,2024",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 16)),
            )
          ],
        ),
      ),
    );
  }
}
