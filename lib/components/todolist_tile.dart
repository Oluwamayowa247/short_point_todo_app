import 'package:flutter/material.dart';
import 'package:short_point_todo_app/components/edit_button.dart';
import 'package:short_point_todo_app/screens/edit_task_screen.dart';

class TodoListTile extends StatefulWidget {
  final bool isDone;
  final String taskTitle;
  final Function(bool) onCheckboxChanged;
  final Function(String) onEditTask;

  const TodoListTile(
      {super.key,
      required this.isDone,
      required this.taskTitle,
      required this.onCheckboxChanged,
      required this.onEditTask});

  @override
  State<TodoListTile> createState() => _TodoListTileState();
}

class _TodoListTileState extends State<TodoListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, right: 10.0, left: 10.0),
      child: Container(
        width: 382,
        height: 91,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.isDone ? Colors.green : Colors.white,
                border: Border.all(
                  color: widget.isDone ? Colors.green : Colors.black,
                ),
              ),
              child: widget.isDone
                  ? Icon(
                      Icons.check,
                      size: 16,
                    )
                  : null,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              widget.taskTitle,
              style: TextStyle(
                color: widget.isDone ? Color(0xFF071C55) : Colors.black,
                fontSize: 16,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                decoration: widget.isDone ? TextDecoration.lineThrough : null,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            EditButton(
              editTask: () {
                _editTask(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  _editTask(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        //  String editedTask = widget.taskTitle;
        return EditTaskScreen();
        // AlertDialog(
        //   title: Text('Edit Task'),
        //   content: TextField(
        //     controller: TextEditingController(text: editedTask),
        //     onChanged: (value) {
        //       editedTask = value;
        //     },
        //   ),
        //   actions: <Widget>[
        //     TextButton(
        //       child: Text('Cancel'),
        //       onPressed: () {
        //         Navigator.of(context).pop();
        //       },
        //     ),
        //     TextButton(
        //       child: Text('Save'),
        //       onPressed: () {
        //         widget.onEditTask(editedTask);
        //         Navigator.of(context).pop();
        //       },
        //     ),
        //   ],
        // );
      },
    );
  }
}
