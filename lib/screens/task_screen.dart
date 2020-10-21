import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sricktodoeyflutter/models/task_data.dart';
import 'package:sricktodoeyflutter/models/tasks.dart';
import 'package:sricktodoeyflutter/widgets/add_new_task.dart';
import 'package:sricktodoeyflutter/widgets/tasks_list.dart';

class TaskScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
          onPressed: () {
            showModalBottomSheet(context: context, builder: (context) => AddTaskScreen());
          },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    CircleAvatar(
                      child: Icon(
                          Icons.list,
                          size: 30.0,
                          color: Colors.blue,
                      ),
                        backgroundColor: Colors.white,
                        radius: 30.0,
                    ),
                    SizedBox(height: 10.0,),
                    Text(
                        'Todoey',
                        style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),
                    ),
                    Text(
                        '${Provider.of<TaskData>(context).tasks.length} Tasks',
                        style: TextStyle(
                            color: Colors.white
                        ),
                    )
                ],
            ),
          ),
          Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: TaskList(),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                      color: Colors.white
                  ),
              )
          )
        ],
      ),
    );
  }
}


