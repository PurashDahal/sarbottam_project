import 'package:flutter/material.dart';
import 'package:sarbottam/constants/colors.dart';
import 'package:sarbottam/screens/LogIn/login.dart';
import 'package:sarbottam/screens/homePage/widgets/User.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 2,
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 200, // Set the desired height
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/HomePage.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

class openDrawer extends StatelessWidget {
  const openDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double logoutButtonHeight = MediaQuery.of(context).size.height;
    return Drawer(
      child: Container(
        padding: EdgeInsets.zero,

        child: Column(
          children: <Widget>[
            SizedBox(
              height: logoutButtonHeight*0.2,
              width: double.infinity,
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Text(
                  'Sarbottam',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Container(
              height: logoutButtonHeight*0.7,
              // color: Colors.amber,
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
           
            const Divider(
              height: 4,
            ),
            SizedBox(
              // height: logoutButtonHeight*0.2,
        
              child: ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Log 0ut'),
                onTap: () {
Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginScreen()));
},

              ),
            ),
          ],
        ),
      ),
    );
  }
}
