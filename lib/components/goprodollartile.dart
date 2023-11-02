import 'package:flutter/material.dart';

class GoproDollarTile extends StatelessWidget {
  const GoproDollarTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 66.11,
      height: 71,
      decoration: BoxDecoration(
        color: Color(0xFF071C55),
      ),
      child: Center(
        child: Text(
          '\$1',
          style: TextStyle(
            color: Color(0xFFF2C94C),
            fontSize: 20,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            height: 0.06,
          ),
        ),
      ),
    );
  }
}
