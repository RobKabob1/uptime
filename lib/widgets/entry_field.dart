import 'package:flutter/material.dart';

class EntryField extends StatefulWidget {
  String title;
  TextEditingController controller;

  EntryField({super.key, required this.title, required this.controller});

  @override
  State<EntryField> createState() => _EntryFieldState();
}

class _EntryFieldState extends State<EntryField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: widget.title,
      ),
    );
  }
}
