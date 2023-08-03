import 'package:flutter/material.dart';

void main() {
  runApp(WhatsAppApp());
}

class WhatsAppApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera_alt_rounded)
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search)
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert)
            ),
          ],
          bottom: TabBar(

            tabs: [
              Tab(icon: Icon(Icons.group)),
              Tab(text: 'Home',),
              Tab(text: 'Status',),
              Tab(text: 'Calls',),

            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.green,
            ),
            ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text('Rapheal'),
                  subtitle: Text('hello Buchi'),
                );
              },
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
          child: Icon(Icons.message),
        ),
      ),
    );
  }
}

