import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'dart:io';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());
  static TaskCubit get(context) => BlocProvider.of(context);

  List Task = [];
  String ?name;
  void Tasks(){
    print("Name = ");
    String? name = stdin.readLineSync();
    Task.add(name);
    emit(AllTaskState());
  }
}
