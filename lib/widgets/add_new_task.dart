import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sricktodoeyflutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String textValue;
  TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff757575),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
                color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                      Text(
                          'Add New Task',
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.blue,
                              decoration: TextDecoration.underline
                          ),

                      ),
                      SizedBox(height: 20.0,),
                      TextField(
                          decoration: InputDecoration(
                              hintText: 'Add your text here',
                          ),
                          controller: textEditingController,
                          autofocus: true,
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            textValue = value;
                          },
                      ),
                      Container(
                          child: FlatButton(
                              onPressed: () {
                                Provider.of<TaskData>(context, listen: false).addTask(textValue);
                                Navigator.pop(context);
                              },
                              color: Colors.blue,
                          child: Text('Add', style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white
                          ),)),
                      )
                  ],
              ),
            ),
        ),
    );
  }
}
