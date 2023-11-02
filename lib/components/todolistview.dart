import 'package:flutter/material.dart';
import 'package:short_point_todo_app/components/todolist_tile.dart';

class TodoListView extends StatefulWidget {
  const TodoListView({super.key});

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF3F3F3),
        ),
        child: Column(
          children: [
            TodoListTile(
              isDone: false,
              taskTitle: 'Training at the Gym',
              onCheckboxChanged: (bool) {},
              onEditTask: (String) {},
            ),
            TodoListTile(
              isDone: true,
              taskTitle: 'Training at the Gym',
              onCheckboxChanged: (bool) {},
              onEditTask: (String) {},
            )
          ],
        ),
      ),
    );
  }
}
