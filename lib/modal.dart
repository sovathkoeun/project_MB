
import 'package:flutter/material.dart';
import 'package:project_mobile/todolist.dart';

class Users extends StatefulWidget {
  @override
  _UsersState createState() => _UsersState();
}
class _UsersState extends State<Users> {
  TextEditingController todoController = TextEditingController();
  createModal(BuildContext context){
    return showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0)
          ), 
          title: Text("New Todo"),
          content: TextField(
            controller: todoController,
            autofocus: true,
          ),
          actions: <Widget>[
             MaterialButton(
              child: Text("Cancel" , style: TextStyle(color: Colors.blue,
              ),), 
              onPressed: () {
             Navigator.of(context).pop();
              },
            ),
            MaterialButton(
              child: Text("Add" , style: TextStyle(color: Colors.blue,
              ),), 
              onPressed: () {
                 Navigator.of(context).pop(todoController.text.toString());
              },
            ),
          ],
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Todo List"),
        ),
        body: ListBox(),
        floatingActionButton: FloatingActionButton(  
          onPressed: () => createModal(context),
          child: Icon(Icons.add),
        ),
    );
  }
}