import 'package:flutter/material.dart';
import 'package:flutter_udemy/models/users/user_model.dart';



class UsersScreen extends StatelessWidget {
  List<DataModel> users = [
    DataModel(id: 1, name: 'Mohamed Bala', phone: '+2491457977665'),
    DataModel(id: 2, name: 'Mohamed Ali', phone: '+2491450998776665'),
    DataModel(id: 3, name: 'Ahamed osame', phone: '+2498854477665'),
     DataModel(id: 4, name: 'Naser Ahamed', phone: '+2491457977665'),
    DataModel(id: 5, name: 'Lolla Ali', phone: '+2491450998776665'),
    DataModel(id: 6, name: 'Tboo Abod', phone: '+2498854477665'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Users'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => usersItem(users[index]),
          separatorBuilder: (context, index) => Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          itemCount: users.length,
        ));
  }

  Widget usersItem(DataModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              child: Text(
                '${user.id}',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
