import 'package:flutter/material.dart';
import '../colors.dart';
import 'home.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List<Widget> pages = [
    Home(),
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.brown,
    ),
    Container(
      color: Colors.green,
    ),
  ];
  int initialPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor:Colors.white ,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Text(
              'Hello Jerry',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.notification_important),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: deepColor,
              backgroundImage: AssetImage('assets/images/john-mcarthur-1BRYdVhFnqc-unsplash.jpg'),
            ),
          ),
        ],
      ),
      body: pages[initialPage],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        currentIndex: initialPage,
        onTap: (index) {
          setState(() {
            initialPage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.warehouse),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.area_chart),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}