import 'package:flutter/material.dart';
import 'package:sarbottam/constants/colors.dart';

class ReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        title: Center(child: Text('Report')),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: ListView(
          children: [
            Container(
              height: 80, // Set your desired height
              child: ListTile(
                title: Text('Placed Orders'),
                tileColor: Colors.brown[400],
                onTap: () {
                  // Handle the tap on Placed Orders
                  print('Placed Orders pressed');
                },
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 80, // Set your desired height
              child: ListTile(
                title: Text('Approved Orders'),
                tileColor: inProgress,
                onTap: () {
                  // Handle the tap on Approved Orders
                  print('Approved Orders pressed');
                },
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 80, // Set your desired height
              child: ListTile(
                title: Text('Rejected Orders'),
                tileColor: complete,
                onTap: () {
                  // Handle the tap on Rejected Orders
                  print('Rejected Orders pressed');
                },
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 80, // Set your desired height
              child: ListTile(
                title: Text('Payment Records'),
                tileColor: inPending,
                onTap: () {
                  // Handle the tap on Payment Records
                  print('Payment Records pressed');
                },
              ),
            ),
            // Add more ListTile buttons as needed
          ],
        ),
      ),
    );
  }
}
