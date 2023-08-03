import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Group extends StatefulWidget {
  const Group({super.key});

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white70,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30,),

        child: Column(

          children: [

            Text(
                "New community"

            ),
          ],
        ),
      ),

    );
  }
}
