import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_udemy/shared/cubit/cubit.dart';
import 'package:flutter_udemy/shared/cubit/states.dart';
import 'package:flutter_udemy/shared/components/components.dart';

class ArchivedTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var tasks = AppCubit.get(context).archivedTasks;
        return  tasksBuilder(
          tasks: tasks,
        );
      },
    );
  }
}