import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0.0,
        leading: Icon(Icons.menu),
        title: Text('Global'),
        actions: [
          IconButton(
            icon: Icon(Icons.notification_important),
            onPressed: () {
              print('Global Is Back');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Global Is Back');
            },
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection:Axis.horizontal ,
              child: Row(
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(50.0),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius:BorderRadius.only(topLeft: Radius.circular(30)),
                   
            //     ),
            //     clipBehavior: Clip.antiAliasWithSaveLayer,
            //     width: 200.0,
            //     child: Stack(
            //       alignment: Alignment.bottomCenter,
            //       children: [
            //       Image(
            //         width: 200.0,
            //         height: 200.0,
            //         fit: BoxFit.cover,
            //         image: AssetImage('images/mohamed.jpg'),

            //         ),
            //     Container(
            //       padding: EdgeInsetsDirectional.only(
                    
                  
            //       ),
            //       width: double.infinity,
            //       color: Colors.grey.withOpacity(0.3),
            //       child: Text(
            //         'Global',
            //         textAlign: TextAlign.center,
            //         style: TextStyle(
            //           fontSize: 30.0,
            //           color: Colors.white,
            //         ),
            //         ),
            //     ),

            //       ],
            //     ),
            //   ),
            // ),
            Text(
              'First',
              style: TextStyle(
                fontSize: 40.0
              ),
              ),
               Text(
              'First',
              style: TextStyle(
                fontSize: 40.0
              ),
              ),
               Text(
              'First',
              style: TextStyle(
                fontSize: 40.0
              ),
              ),
               Text(
              'First',
              style: TextStyle(
                fontSize: 40.0
              ),
              ),
               Text(
              'First',
              style: TextStyle(
                fontSize: 40.0
              ),
              ),
               Text(
              'First',
              style: TextStyle(
                fontSize: 40.0
              ),
              ),
               Text(
              'First',
              style: TextStyle(
                fontSize: 40.0
              ),
              ),
               Text(
              'First',
              style: TextStyle(
                fontSize: 40.0
              ),
              ),
               Text(
              'First',
              style: TextStyle(
                fontSize: 40.0
              ),
              ),
               Text(
              'First',
              style: TextStyle(
                fontSize: 40.0
              ),
              ),
               Text(
              'First',
              style: TextStyle(
                fontSize: 40.0
              ),
              ),
               Text(
              'First',
              style: TextStyle(
                fontSize: 40.0
              ),
              ),
               Text(
              'First',
              style: TextStyle(
                fontSize: 40.0
              ),
              ),
               Text(
              'First',
              style: TextStyle(
                fontSize: 40.0
              ),
              ),
               Text(
              'First',
              style: TextStyle(
                fontSize: 40.0
              ),
              ),
               Text(
              'First',
              style: TextStyle(
                fontSize: 40.0
              ),
              ),
           
          ],
        ),
      ),
        
        
      
    );
  }
}
