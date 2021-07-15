import 'package:flutter/material.dart';
import 'package:flutter_udemy/models/users/user_model.dart';

class MessengerScreen extends StatelessWidget {
  List<User> users = [
    User(
        name: 'Entisar Balla Moh',
        mes: 'Hello Entisar',
        time: '02:30 am',
        image: 'images/enoo.jpeg'),
    User(
        name: 'Mogtaba Babiker',
        mes: 'Hell Mogtaba',
        time: '07:00 am',
        image: 'images/tboo.jpg'),
    User(
        name: 'Ahmed Oka',
        mes: 'Hello Ahmed',
        time: '10:30 am',
        image: 'images/oka.png'),
    User(
        name: 'مقدم مهدي',
        mes: 'Hello  مقدم',
        time: '8:30 am',
        image: 'images/x.jpg'),
    User(
        name: 'علاء الدين ',
        mes: 'Hello علاء ',
        time: '8:30 am',
        image: 'images/nasr.jpg'),
    User(
        name: 'Khalid Alturkey',
        mes: 'HELLO kHalid',
        time: '05:30 pm',
        image: 'images/trukey.jpg'),
    User(
        name: 'Mohamed Norain',
        mes: 'Hello Mohamed',
        time: '09:30 am',
        image: 'images/test.jpg'),
    User(
        name: 'Mohamed Hassan',
        mes: 'Hello Soma',
        time: '00:30 am',
        image: 'images/dmo.jpg'),
    User(
        name: 'Omnia Koko',
        mes: 'Hello Omnia',
        time: '11:00 pm',
        image: 'images/omnia.jpg'),
    User(
        name: 'LoOla Abubaker ',
        mes: 'Hello LoOla',
        time: '8:30 am',
        image: 'images/loola.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/mohamed.jpg'),
              radius: 25.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: CircleAvatar(
                backgroundColor: Colors.grey[200],
                radius: 16.0,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                  //size: 25.0,
                ),
              ),
              onPressed: () {}),
          // SizedBox(width: 20.0,),
          IconButton(
              icon: CircleAvatar(
                backgroundColor: Colors.grey[200],
                radius: 16.0,
                child: Icon(
                  Icons.edit,
                  color: Colors.black,
                ),
              ),
              onPressed: () {}),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Start Search Container
              Container(
                padding: EdgeInsets.all(10.0),
                //color: Colors.black,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              // End Search Container
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  // shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => storyItem(users[index]),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20.0,
                  ),
                  itemCount: users.length,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                // but All Item In The Screen
                shrinkWrap: true,
                // Not To Scroll The List
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => chatItem(users[index]),
                separatorBuilder: (context, index) => SizedBox(
                  height: 20.0,
                ),
                itemCount: users.length,
              )
            ],
          ),
        ),
      ),
    );
  }

  // 1. build item
  // 2. build list
  // 3. add item to list

// arrow function
  Widget chatItem(User user) => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  '${user.image}',
                ),
                radius: 30.0,
              ),
              CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.white,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 3.0,
                  end: 3.0,
                ),
                child: CircleAvatar(
                  radius: 5.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '${user.mes}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        width: 5.0,
                        height: 5.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text('${user.time}'),
                  ],
                ),
              ],
            ),
          ),
        ],
      );

  Widget storyItem(User user) => Container(
        width: 70.0,
        child: Column(
          children: [
            Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('${user.image}'),
                    radius: 30.0,
                  ),
                  CircleAvatar(
                    radius: 8.0,
                    backgroundColor: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      bottom: 3.0,
                      end: 3.0,
                    ),
                    child: CircleAvatar(
                      radius: 5.0,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '${user.name}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}
