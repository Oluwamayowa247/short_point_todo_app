import 'package:flutter/material.dart';

class TodoAppBar extends StatelessWidget {
  final String imgPath;
  final String userName;
  final String welcomeText;
  const TodoAppBar(
      {super.key,
      required this.imgPath,
      required this.userName,
      required this.welcomeText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.14,
      decoration: BoxDecoration(
          color: Color(
            0xFF3556AB,
          ),
          boxShadow: [
            BoxShadow(
              color: Color(
                0x26000000,
              ),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              child: Image.asset(
                imgPath,
                fit: BoxFit.cover,
                scale: 0.5,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: TextStyle(
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Color(
                          0x26000000,
                        ),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      ),
                    ],
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  welcomeText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    shadows: [
                      Shadow(
                        color: Color(
                          0x26000000,
                        ),
                        blurRadius: 5,
                        offset: Offset(0, 4),
                      )
                    ],
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.italic,
                    height: 0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
