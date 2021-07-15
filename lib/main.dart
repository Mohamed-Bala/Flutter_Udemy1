import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'layout/home_layout.dart';
import 'modules/card/my_card.dart';
import 'modules/home/home_screen.dart';
import 'modules/bmi/bmi_screen.dart';
import 'modules/counter/counter_screen.dart';
import 'modules/login/login_screen.dart';
import 'modules/messenger/messenger_screen.dart';
import 'modules/users/users_screen.dart';
import 'shared/bolc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}
 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCard(),
     // theme: ThemeData.dark(),
    );
  }
}
