import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;
  final Function longPressCallback;

  TaskTile({this.taskTitle, this.isChecked, this.checkboxCallBack, this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        checkColor: Colors.blue,
        onChanged: checkboxCallBack
      ),
    );
  }
}
