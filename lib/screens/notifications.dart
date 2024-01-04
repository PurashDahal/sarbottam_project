import 'package:flutter/material.dart';

class Notificationpage extends StatefulWidget {
  const Notificationpage({super.key});

  @override
  State<Notificationpage> createState() => _NotificationpageState();
}

class _NotificationpageState extends State<Notificationpage> {
  final items = List<String>.generate(10, (i) => 'Item ${i + 1}');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Noticifaction"),
      backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.notification_add,color: Colors.red,),
        title: Text('New Notification'),
trailing: IconButton(onPressed: () {

}, icon: Icon(Icons.delete)),
      ),),
    );
  }
}