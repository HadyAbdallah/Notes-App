import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.isLoading = false});
  final String text;
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(color: Colors.black)
              : Text(
                  text,
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
        ),
      ),
    );
  }
}
