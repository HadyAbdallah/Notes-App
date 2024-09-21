import 'package:flutter/material.dart';
import 'package:notes/Models/NoteModel.dart';
import 'package:notes/Widgets/ColorsListView.dart';
import 'package:notes/constants.dart';

class EditColorsListView extends StatefulWidget {
  const EditColorsListView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditColorsListView> createState() => _EditColorsListView();
}

class _EditColorsListView extends State<EditColorsListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kcolorsList.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36 * 2,
      child: ListView.builder(
          itemCount: kcolorsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kcolorsList[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: kcolorsList[index],
                  isSelected: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
