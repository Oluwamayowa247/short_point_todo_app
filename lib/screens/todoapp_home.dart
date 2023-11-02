import 'package:flutter/material.dart';
import 'package:short_point_todo_app/components/app_bar.dart';
import 'package:short_point_todo_app/components/gopro_tile.dart';
import 'package:short_point_todo_app/components/todolistview.dart';

class TodoAppHome extends StatefulWidget {
  const TodoAppHome({super.key});

  @override
  State<TodoAppHome> createState() => _TodoAppHomeState();
}

class _TodoAppHomeState extends State<TodoAppHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Color(0xFF0C2971),
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color(0xFF3556AB),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            TodoAppBar(
              imgPath: 'lib/assets/images/avatar.png',
              userName: 'Welcome Jhon',
              welcomeText: 'What are your plans \nfor today?',
            ),
            GoProTile(),
            TodoListView(),
          ],
        ),
      ),
    );
  }
}
