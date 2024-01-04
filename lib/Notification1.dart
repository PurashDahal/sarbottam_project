// import 'package:flutter/material.dart';
// import 'package:sarbottam/screens/homePage/widgets/userdetail.dart';

// class UserList extends StatefulWidget {
//   const UserList({Key? key}) : super(key: key);

//   @override
//   _UserListState createState() => _UserListState();
// }

// class _UserListState extends State<UserList> {
//   List<UserDetail> userDetails = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('User List'),
//       ),
//       body: userDetails.isEmpty
//           ? Center(
//               child: Text(
//                 'No users available.',
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             )
//           : ListView.builder(
//               itemCount: userDetails.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(userDetails[index].name),
//                   subtitle: Text(userDetails[index].id),
//                   onTap: () {
//                     // You can navigate to user details page or perform other actions
//                     // when a user is tapped.
//                     print('User ${userDetails[index].name} tapped.');
//                   },
//                 );
//               },
//             ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _showAddUserDialog(context);
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }

//   Future<void> _showAddUserDialog(BuildContext context) async {
//     TextEditingController nameController = TextEditingController();
//     TextEditingController idController = TextEditingController();
//     TextEditingController numberController = TextEditingController();
//     TextEditingController postController = TextEditingController();

//     await showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Add User'),
//           content: Column(
//             children: [
//               TextField(
//                 controller: nameController,
//                 decoration: const InputDecoration(labelText: 'Name'),
//               ),
//               TextField(
//                 controller: idController,
//                 decoration: const InputDecoration(labelText: 'ID'),
//               ),
//               TextField(
//                 controller: numberController,
//                 decoration: const InputDecoration(labelText: 'Number'),
//               ),
//               TextField(
//                 controller: postController,
//                 decoration: const InputDecoration(labelText: 'Post'),
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: const Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () {
//                 setState(() {
//                   userDetails.add(
//                     UserDetail(
//                       name: nameController.text,
//                       id: idController.text,
//                       number: int.parse(numberController.text),
//                       post: postController.text,
//                     ),
//                   );
//                 });
//                 Navigator.pop(context);
//               },
//               child: const Text('Add'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: UserList(),
//   ));
// }
