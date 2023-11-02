import 'package:flutter/material.dart';

class DoneButton extends StatefulWidget {
  const DoneButton({super.key});

  @override
  State<DoneButton> createState() => _DoneButtonState();
}

class _DoneButtonState extends State<DoneButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365,
      height: 61,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF3556AB),
        border: Border.all(
          width: 2,
          color: Color(0xFF0C2971),
        ),
      ),
      child: Center(
        child: Text(
          'Done',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600,
              shadows: [
                Shadow(
                  color: Color(
                    0x26000000,
                  ),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                ),
              ]),
        ),
      ),
    );
  }
}
