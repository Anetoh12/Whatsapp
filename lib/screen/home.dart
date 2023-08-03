import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius:BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(20),
                width: 100,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Trending'),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius:BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(20),
                width: 100,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child : Text('all'),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius:BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(20),
                width: 100,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text('New'),
              ),

            ],
          ),
        )

      ],

    );
  }
}
