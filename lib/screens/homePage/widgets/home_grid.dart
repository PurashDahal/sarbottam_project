import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sarbottam/screens/homePage/modal.dart';

class HomeGrid extends StatelessWidget {
  HomeGrid({super.key});
  List<GridModal> data=[
    GridModal(icon:Icons.person_add_alt_1, label: "Add Dealers",color: Colors.red),
    GridModal(icon:Icons.menu_book_sharp, label: "Create Booklet",color: Colors.orange),
    GridModal(icon: Icons.add_shopping_cart_rounded, label: "Place Order", color: Colors.green),
    GridModal(icon: Icons.diamond_outlined, label: "Payment",color: Colors.blue),
GridModal(icon: Icons.report, label:"Report", color: Colors.purple)

  ];


  @override
  Widget build(BuildContext context) {
  
    return Container(
         margin: EdgeInsets.only(left:8.0,right: 8.0),
      child: GridView(
        
        shrinkWrap: true,
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        
      
        
        ),
        children: [
            //  Container(
            //     padding: EdgeInsets.only(top: 8, right: 12, left: 12, bottom: 8),
            //     decoration: BoxDecoration(
            //       shape: BoxShape.rectangle,
            //       borderRadius: BorderRadius.circular(8),
            //       boxShadow: [BoxShadow(color: Colors.black26)],
            //       color: Colors.white70,
            //     ),
            //     child: Column(
            //       children: [
            //         CircleAvatar(
            //           backgroundColor: Colors.red,
            //           radius: 25,
            //           child: IconButton(
            //             color: Colors.white,
            //             icon: Icon(
            //               Icons.person_add_alt_1,
            //             ),
            //             onPressed: () {
            //               Navigator.push(
            //                   context,
            //                   MaterialPageRoute(
            //                       builder: (context) => HomeGrid()));
            //             },
            //           ),
            //         ),
            //         Text('Add Dealers')
            //       ],
            //     ),
            //   ),
       for(final loop in data)
       Card(
         
        elevation: 10,
           
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           CircleAvatar(
                      backgroundColor: loop.color,
                      radius: 20,
                      child: IconButton(
                        color: Colors.white,
                        icon: Icon(loop.icon),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => HomeGrid()));
                        },
                      ),
                    ),
                    Text(loop.label)
                  
        ]),
       )
        ],
        ),
    );
  }
}