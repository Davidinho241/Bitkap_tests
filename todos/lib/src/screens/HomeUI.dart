import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeUI extends StatefulWidget {
  HomeUI({Key? key}) : super(key: key);
  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List tasksArray = [];

  @override
  void initState() {
    super.initState();
    tasksArray.add("value1");
    tasksArray.add("value2");
    tasksArray.add("value3");
    tasksArray.add("value4");
    tasksArray.add("value5");
    tasksArray.add("value6");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("What's up, David!"),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: tasksArray.length,
            itemBuilder: (BuildContext context, int index){
              return Dismissible(key: Key(tasksArray[index]), child: Card(
                child: ListTile(
                  title: Text(tasksArray[index]),
                ),
              ));
            }
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          tooltip: 'Add Task',
          child: Icon(Icons.add),
        ));
  }
}
