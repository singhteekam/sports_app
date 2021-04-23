import 'package:flutter/material.dart';
import 'package:sports_app/Homepage.dart';
import 'package:sports_app/addItem.dart';
import 'package:sports_app/items.dart';
import 'package:velocity_x/velocity_x.dart';

  String fab="+ Add New Academy";
  var fabColor= Colors.grey[200];
  var fabtc= Colors.black;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  int _selectedIndex = 0;



  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    Text(
      'Coaching Staff',
      style: optionStyle,
    ),
    Text(
      'Notifications',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _selectedIndex==0?"Dashboard".text.white.make(): _selectedIndex==1?"Coaching Staff".text.white.make(): _selectedIndex==2?"Notification".text.white.make(): "Profile".text.white.make(),
        backgroundColor: Colors.black,
      ),

      body: SingleChildScrollView(
              child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomNavigationBar(
        
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Dashboard',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports),
            label: 'Coaching Staff',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: 'Notification',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: 'Profile',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),

      floatingActionButton: FloatingActionButton.extended(
        // isExtended: true,
        onPressed: (){
          Navigator.push(context, new MaterialPageRoute(builder: (context)=> AddItem()));
          if(fab=="+ Add New Academy"){
            fab= "+";
            fabColor= Colors.black;
            fabtc= Colors.white;
          }
          else{
            fab="+ Add New Academy";
            fabColor= Colors.grey[200];
            fabtc= Colors.black;
          }
          setState(() {
            
          });
          },
          
        backgroundColor: fabColor,
        label: Text(fab, style: TextStyle(color: fabtc, fontWeight: FontWeight.bold),),
        elevation: 0,
      )
      
    );
  }
}