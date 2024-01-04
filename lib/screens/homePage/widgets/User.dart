import 'package:flutter/material.dart';
import 'package:sarbottam/screens/homePage/widgets/userdetail.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<UserDetail> userDetails = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Add Dealers'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.red,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddUserDialog(context);
        },
        tooltip: 'AddPerson',
        backgroundColor: Colors.red,
        child: Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          // existing user list

          Container(
            margin: EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey[200],
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    // Handle search button press
                  },
                  icon: const Icon(Icons.search),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showAddUserDialog(BuildContext context) async {
    TextEditingController nameController = TextEditingController();
    TextEditingController idController = TextEditingController();
    TextEditingController numberController = TextEditingController();
    TextEditingController postController = TextEditingController();

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add User'),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: const TextStyle(fontSize: 14.0),
                ),
              ),
              TextField(
                controller: idController,
                decoration: InputDecoration(
                  labelText: 'E-mail.',
                  labelStyle: const TextStyle(fontSize: 14.0),
                ),
              ),
              TextField(
                controller: numberController,
                decoration: InputDecoration(
                  labelText: 'Number',
                  labelStyle: const TextStyle(fontSize: 14.0),
                ),
              ),
              TextField(
                controller: postController,
                decoration: InputDecoration(
                  labelText: 'Post',
                  labelStyle: const TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  userDetails.add(
                    UserDetail(
                      name: nameController.text,
                      id: idController.text,
                      number: int.parse(numberController.text),
                      post: postController.text,
                    ),
                  );
                });
                Navigator.pop(context);
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
