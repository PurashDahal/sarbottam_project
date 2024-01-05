
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SchemeSlider extends StatelessWidget {
  SchemeSlider({super.key, required this.images, required this.title, required this.price});
  List<String> images;
  List<String> title;
  List<String> price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 220,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (BuildContext ctx, index){
          return SizedBox(
                    child: Card(
                      clipBehavior: Clip.hardEdge,
                      elevation: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 130,
                    child: Image.asset(images[index],
                    fit: BoxFit.fill,
                    )),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(title[index],style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(price[index], style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),),
                    )
                ],
              ),
            ),
          );
               
        }),
      ),
    );

  }
}