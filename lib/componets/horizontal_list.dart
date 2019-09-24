import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image: 'images/fashion.png',
            caption: 'Fashion',
          ),
          Category(
            image: 'images/beauty.png',
            caption: 'Beauty',
          ),
          Category(
            image: 'images/electronics.png',
            caption: 'Electronic',
          ),
          Category(
            image: 'images/food.png',
            caption: 'Food',
          ),
          Category(
            image: 'images/phone.png',
            caption: 'Mobile',
          ),
          Category(
            image: 'images/others.png',
            caption: 'Others',
          )


        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image;
  final String caption;

  Category({
    this.image,
    this.caption
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(image,
            height: 50,
            width: 70,
            ),
            subtitle: Text(caption, textAlign:TextAlign.center, style: TextStyle(fontSize: 12),),
          ),
        ),
      ),
      );
  }
}