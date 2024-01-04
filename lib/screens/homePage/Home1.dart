import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sarbottam/Notification1.dart';
// import 'package:sarbottam/noticifaction.dart';
import 'package:sarbottam/screens/LogIn/login.dart';
import 'package:sarbottam/screens/homePage/Home2.dart';
import 'package:sarbottam/screens/homePage/widgets/Report.dart';
import 'package:sarbottam/screens/homePage/widgets/User.dart';
import 'package:sarbottam/screens/homePage/widgets/home_grid.dart';
import 'package:sarbottam/screens/homePage/widgets/userdetail.dart';
import 'package:sarbottam/screens/notifications.dart';

void main() => runApp(const HomePage());

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final appTitle = 'Sarbottam Home Page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  void change(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, 
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(

        child: Scaffold(
          
          drawer: openDrawer(),
          // appBar: AppBar(
          //   centerTitle: true,
          //   toolbarHeight: 90,
          //   leadingWidth: 120.0,
          //   leading: Builder(builder: (context) {
          //     return Container(
          //       color: Colors.red,
          //       margin: EdgeInsets.only(right: 30, top: 30),
          //       child: IconButton(
          //         color: Colors.white,
          //         icon: Icon(Icons.menu, size: 30),
          //         onPressed: () {
          //           Scaffold.of(context).openDrawer();
          //         },
          //       ),
          //     );
          //   }),
          //   actions: [
          //     IconButton(
          //       icon: Padding(
          //         padding: const EdgeInsets.only(top: 30),
          //         child: Icon(Icons.notifications,size: 50,),
          //       ),
          //       onPressed: () {
          //         Navigator.push(context, MaterialPageRoute(builder: (context) => Notificationpage(),));
          //         // Handle notification button press
          //       },
          //     ),
          //   ],
        
          //   flexibleSpace:
        
          //    Padding(
          //      padding: const EdgeInsets.only(top:60),
          //      child: Container(
          //       margin: EdgeInsets.only(top: 15),
          //       child: Center(
          //         child: Image.asset(
          //           'assets/Logo.jpeg', 
          //           fit: BoxFit.fill,
          //           // height: 120
          //           height: AppBar().preferredSize.height * 2,
          //           // width: AppBar().preferredSize.height * 3
          //         ),
          //       ),
          //                ),
          //    ),
          // ),
          // appBar: appBar(),
         
          body: Column(
            children: [
              SizedBox(height: 20,),
              appBar(),
              Home2(),
              Container(
                height: 3,
                width: double.infinity,
                color: Colors.blue[900],
              ),
              Container(
                height: 7,
                width: double.infinity,
                color: Colors.red,
              ),
              Container(
                height: 6,
                width: double.infinity,
                color: Colors.orange[300],
              ),
              SizedBox(height: 30),
              // IconButtonsRow(),
              HomeGrid()
            ],
          ),
        ),
      ),
    );
  }
  
  appBar() {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Container(  
  padding: EdgeInsets.only(left: 20),
  color: Colors.red,
child: Builder(
  builder: (context) {
    return IconButton(icon: Icon(Icons.menu,size: 40,color: Colors.white,), onPressed: (){
      Scaffold.of(context).openDrawer();
    },);
  }
),
),
Image.asset("assets/Logo.jpeg", width:  105,),
Stack(
  children: [
   
    Padding(
      padding: const EdgeInsets.only(right:20.0),
      child: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (_){
          return Notificationpage();
        }));
      }, icon:Icon(Icons.notifications_none,size: 30,)),
    ),
     Positioned(
      top: 11,
      left: 22,
      child: Container( 
        decoration: BoxDecoration(  
      color: Colors.red,
shape: BoxShape.circle
        ), 
      height: 10,
      width: 10,
    )),
  ],
),

],
    );
  }

}

class IconButtonsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.only(top: 8, right: 12, left: 12, bottom: 8),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [BoxShadow(color: Colors.black26)],
                color: Colors.white70,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 25,
                    child: IconButton(
                      color: Colors.white,
                      icon: Icon(
                        Icons.person_add_alt_1,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserList()));
                      },
                    ),
                  ),
                  Text('Add Dealers')
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.8),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [BoxShadow(color: Colors.black26)],
                color: Colors.white70,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 25,
                    child: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.menu_book_sharp),
                      onPressed: () {
                        // Perform the second function
                        print('Button 2 pressed');
                      },
                    ),
                  ),
                  Text('Create Booklet'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.8),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [BoxShadow(color: Colors.black26)],
                color: Colors.white70,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 25,
                    child: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.add_shopping_cart_rounded),
                      onPressed: () {
                        // Perform the third function
                        print('Button 3 pressed');
                      },
                    ),
                  ),
                  Text('Place an Order'),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          margin: EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 7, bottom: 7, right: 22, left: 22),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [BoxShadow(color: Colors.black26)],
                  color: Colors.white70,
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey[700],
                      radius: 25,
                      child: IconButton(
                        color: Colors.white,
                        icon: Icon(
                          Icons.diamond_outlined,
                        ),
                        onPressed: () {
                          // Perform the first function
                          print('Button 1 pressed');
                        },
                      ),
                    ),
                    Text('Payment')
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 7, bottom: 7, right: 28, left: 30),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [BoxShadow(color: Colors.black26)],
                  color: Colors.white70,
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.indigo,
                      radius: 25,
                      child: IconButton(
                        color: Colors.white,
                        icon: Icon(
                          Icons.report,
                        ),
                        onPressed: () {
                          // Perform the first function
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReportPage()));
                        },
                      ),
                    ),
                    Text('Report')
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 50,),
 Container(height: 100,
          width: 100,
          child: Center(child: Text('MAtin softech'),),
          color: Colors.red,)
      ],
    );
  }
}