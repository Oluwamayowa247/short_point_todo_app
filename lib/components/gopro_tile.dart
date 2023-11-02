import 'package:flutter/material.dart';
import 'package:short_point_todo_app/components/goprodollartile.dart';

class GoProTile extends StatelessWidget {
  const GoProTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.14,
      decoration: BoxDecoration(
        color: Color(0xFFCCE53D),
        border: Border.all(
          color: Color.fromARGB(255, 201, 216, 114),
          width: 2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('lib/assets/images/trophy.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Go Pro (No Ads)',
                style: TextStyle(
                  color: Color(0xFF071C55),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'No fuss, no ads, for only \$1 a \n month',
                style: TextStyle(
                  color: Color(0xFF0C2971),
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: GoproDollarTile(),
          ),
        ],
      ),
    );
  }
}
