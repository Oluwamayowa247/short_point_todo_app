import 'package:flutter/material.dart';

class EditButton extends StatefulWidget {
  final Function()? editTask;
  const EditButton({super.key, this.editTask});

  @override
  State<EditButton> createState() => _EditButtonState();
}

class _EditButtonState extends State<EditButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.editTask,
      child: Container(
        width: 55,
        height: 50,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFF071C55)),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Center(
          child: Text(
            'Edit',
            style: TextStyle(
              color: Color(0xFF071C55),
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
