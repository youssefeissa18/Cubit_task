import 'package:cubittask/cubit/cubit_task/task_cubit.dart';
import 'package:cubittask/cubit/cubit_task/task_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CollageTask extends StatefulWidget {
  const CollageTask({Key? key}) : super(key: key);

  @override
  State<CollageTask> createState() => _CollageTaskState();
}

class _CollageTaskState extends State<CollageTask> {
  bool val1 = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskCubit, TaskState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var taskCubit = TaskCubit.get(context);
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("ALL TASKS"),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(Icons.alarm),
              ),
              Icon(Icons.exit_to_app),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              taskCubit.Tasks();
            },
            child: Icon(Icons.add),
          ),


          body: Column(
            children: [
              Container(
                child: CheckboxListTile(value: val1, onChanged: (val2) {
                  setState(() {
                    val1 = val2!;
                  });
                },
                  title: Text(
                    "Task One",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text("Collage Task"),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
