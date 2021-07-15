import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_udemy/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:flutter_udemy/modules/done_tasks/done_tasks_screen.dart';
import 'package:flutter_udemy/modules/new_tasks/new_tasks_screen.dart';
import 'package:flutter_udemy/shared/components/components.dart';
import 'package:flutter_udemy/shared/components/constants.dart';
import 'package:flutter_udemy/shared/cubit/cubit.dart';
import 'package:flutter_udemy/shared/cubit/states.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

// 1. create database
// 2. create tables
// 3. open database
// 4. insert to database
// 5. get from database
// 6. update in database
// 7. delete from database

class HomeLayout extends StatelessWidget {
  var scaffoldkey = GlobalKey<ScaffoldState>();
  var formkey = GlobalKey<FormState>();
  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          if(state is AppInsertDatabaseState){
             Navigator.pop(context);
          }
        },
        builder: (context, state) {
          // Create object name cubit
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            key: scaffoldkey,
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: Text(
                cubit.title[cubit.currentIndex],
              ),
            ),
            body: ConditionalBuilder(
              condition: state is!AppGetDatabaseLodingState,
              builder: (context) => cubit.screens[cubit.currentIndex],
              fallback: (context) => Center(child: CircularProgressIndicator()),
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.teal,
              onPressed: () {
                if (cubit.isBottomSheetShow) {
                  if (formkey.currentState.validate()) {
                    cubit.insertToDatabase(
                      title: titleController.text,
                      date: dateController.text,
                      time: timeController.text
                    );

                    // insertToDatabase(
                    //   title: titleController.text,
                    //   date: dateController.text,
                    //   time: timeController.text,
                    // ).then((value) {
                    //   getDataFormDatabase(database).then((value) {
                    //     Navigator.pop(context);
                    //     // setState(() {
                    //     //   isBottomSheetShow = false;
                    //     //   fabIcon = Icons.edit;
                    //     //   tasks = value;
                    //     //   print(tasks);
                    //     // });
                    //   });
                    // });
                  }
                } else {
                  scaffoldkey.currentState
                      .showBottomSheet(
                        (context) => Container(
                          color: Colors.grey[200],
                          padding: EdgeInsets.all(20.0),
                          child: Form(
                            key: formkey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                defaultFormField(
                                  controller: titleController,
                                  label: 'Task Title',
                                  type: TextInputType.text,
                                  prefix: Icons.title,
                                  isReadOnly: false,
                                  validate: (String value) {
                                    if (value.isEmpty) {
                                      return 'title must not be empty';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                defaultFormField(
                                    controller: timeController,
                                    label: 'Task Time',
                                    type: TextInputType.datetime,
                                    prefix: Icons.watch_later_outlined,
                                    validate: (String value) {
                                      if (value.isEmpty) {
                                        return 'time must not be empty';
                                      }
                                      return null;
                                    },
                                    onTap: () {
                                      showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.now(),
                                      ).then((value) {
                                        timeController.text =
                                            value.format(context);
                                        print(value.format(context));
                                      });
                                    }),
                                SizedBox(
                                  height: 16.0,
                                ),
                                defaultFormField(
                                    controller: dateController,
                                    label: 'Task Date',
                                    type: TextInputType.datetime,
                                    prefix: Icons.calendar_today,
                                    validate: (String value) {
                                      if (value.isEmpty) {
                                        return 'date must not be empty';
                                      }
                                      return null;
                                    },
                                    onTap: () {
                                      showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime.now(),
                                        lastDate: DateTime.parse('2021-10-03'),
                                      ).then((value) => {
                                            // dateController.text = value.
                                            print(DateFormat.yMMMd()
                                                .format(value)),
                                            dateController.text =
                                                DateFormat.yMMMd()
                                                    .format(value),
                                          });
                                    }),
                              ],
                            ),
                          ),
                        ),
                        elevation: 50.0,
                        backgroundColor: Colors.white,
                      )
                      .closed
                      .then((value) {
                    cubit.changeBottmShettState(
                      isShow: false,
                      icon: Icons.edit,
                    );
                  });
                  cubit.changeBottmShettState(
                    isShow: true,
                    icon: Icons.add,
                  );
                }
              },
              child: Icon(cubit.fabIcon
                  // fabIcon,
                  ),
            ),
            bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: cubit.currentIndex,
                fixedColor: Colors.teal,
                onTap: (index) {
                  cubit.changeIndex(index);
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.menu),
                    label: 'Tasks',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.check_circle_outline),
                    label: 'Done',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.archive_outlined),
                    label: 'Archived',
                  ),
                ]),
          );
        },
      ),
    );
  }
}
