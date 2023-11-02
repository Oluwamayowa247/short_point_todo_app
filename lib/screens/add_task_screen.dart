import 'package:flutter/material.dart';

import '../components/done_button.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF3556AB),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Add New Task',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            height: 0,
            shadows: [
              Shadow(
                color: Color(
                  0x26000000,
                ),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color(0xFFF3F3F3),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Text(
                  'Task Name',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xFFCACACA),
                      )),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter task name',
                      hintStyle: TextStyle(
                        color: Color(0xFFCACACA),
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.60,
                ),
                DoneButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
