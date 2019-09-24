import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      'title': 'Iphone 7',
      'description': '7GB RAM',
      'image': 'images/products/cell1.jpg',
      'price': '150',
      'discount': '122'
    },
    {
      'title': 'Red Dress',
      'description': 'Plain cotton',
      'image': 'images/products/dress1.jpg',
      'price': '43',
      'discount': '19'
    },
    {
      'title': 'Spag',
      'description': 'Drum',
      'image': 'images/products/food2.jpg',
      'price': '10',
      'discount': '8'
    },
    {
      'title': 'LG LCD',
      'description': '48 Inch',
      'image': 'images/products/tv1.jpg',
      'price': '1000',
      'discount': '890'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,),
      itemBuilder: (BuildContext context, int index){
        return Product(
          title: product_list[index]['title'],
          description: product_list[index]['description'],
          image: product_list[index]['image'],
          price: product_list[index]['price'],
          discount: product_list[index]['discount'],
        );
      },

    );
  }
}

class Product extends StatelessWidget {
  final title;
  final description;
  final image;
  final price;
  final discount;

  Product(
      {this.title, this.description, this.image, this.price, this.discount});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: title,
        child: Material(
          child: InkWell(
            onTap: (){},
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                  title: Text("\$$price", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w800),),
                  subtitle: Text(
                    "\$$discount",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough
                    ),
                  ),
                ),
              ),
              child: Image.asset(image, fit: BoxFit.cover,),
            ),
          ),
        ),
      ),
    );
  }
}
