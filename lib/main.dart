//import 'dart:html';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    home: Homepage(),
    theme: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.lightBlue[800],
    ),
  ));
}
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text("Fazle"),
        centerTitle: true,
      ),
      body: Center(child: Card(
       child: Column(
         children: <Widget>[
         
          Image.asset('assets/photo.jpg'),
           Image.asset('assets/eee.jpg')
         ],
       ),
      ),) , 

      drawer: Drawer(
        child: ListView(
           padding: EdgeInsets.zero,
           children: <Widget>[
             UserAccountsDrawerHeader(
               accountName: Text("Fazle Rabbe"),
                accountEmail: Text("fazlerabbee67@gmail.com"),
                currentAccountPicture:CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1474417426737-fbbff0e62ea0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                )
                ),

             ListTile(
               title: Text("Fazle Rabbe"),
               subtitle: Text("Developer"),
               leading: Icon(Icons.person),
               trailing:Icon(Icons.edit),  
             ),

              ListTile(
               title: Text("Email"),
               subtitle: Text("fazlerabbee67@gmail.com"),
               leading: Icon(Icons.email),
               trailing:Icon(Icons.edit),  
             )

             
           ],
        ),
      ),

        
      

      
      floatingActionButton:FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.edit),
        ) ,
    );
    
  }
}