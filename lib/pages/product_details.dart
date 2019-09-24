import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final title;
  final description;
  final image;
  final price;
  final discount;

  ProductDetails(
      {this.title, this.description, this.image, this.price, this.discount});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.redAccent,
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.image),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.title,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        '\$' + widget.price.toString(),
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(
                        child: Text(
                          '\$' + widget.discount.toString(),
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0, right: 10.0),
            child: Row(
              children: <Widget>[


                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text('Quantity'),
                          content: Text('Choose the quantity'),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: (){
                                Navigator.of(context).pop();
                              },
                              child: Text('close'),
                            )
                          ],

                        );
                      });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text('Qty'),
                        ),
                        Expanded(
                          child: Icon(Icons.arrow_drop_down),
                        )
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text('Color'),
                            content: Text('Choose a color'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                                child: Text('close'),
                              )
                            ],
                          );
                        }
                      );
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text('Color'),
                        ),
                        Expanded(
                          child: Icon(Icons.arrow_drop_down),
                        )
                      ],
                    ),
                  ),
                )



              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: Text('Buy!'),
                  ),
                ),
                IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.redAccent, onPressed: (){},),
                IconButton(icon: Icon(Icons.favorite_border), color: Colors.red, onPressed: (){},),
                
              ],
            ),
          ),
          Divider( color: Colors.grey,),
          ListTile(
            title: Text('Description'),
            subtitle: Text(widget.description),
          ),
          Divider(),   
          ExpansionTile(
            title: Text('Specification'),
            children: <Widget>[
            ],
          ),
          Divider(),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Related Products', style: TextStyle(fontSize: 16),),
          ),
          Container(
            height: 460,
            child: RelatedProducts(),
          )
        ],
      ),
    );
  }
}

class RelatedProducts extends StatefulWidget {
  @override
  _RelatedProductsState createState() => _RelatedProductsState();
}

class _RelatedProductsState extends State<RelatedProducts> {
  var product_list = [
    {
      'title': 'Iphone 7',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
      'image': 'images/products/cell1.jpg',
      'price': '150',
      'discount': '122'
    },
    {
      'title': 'Red Dress',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
      'image': 'images/products/dress1.jpg',
      'price': '43',
      'discount': '19'
    },
    {
      'title': 'Spag',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
      'image': 'images/products/food2.jpg',
      'price': '10',
      'discount': '8'
    },
    
  ];
   @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return SingleProduct(
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

class SingleProduct extends StatelessWidget {
  final title;
  final description;
  final image;
  final price;
  final discount;

  SingleProduct(
      {this.title, this.description, this.image, this.price, this.discount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Hero(
          tag: title,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductDetails(
                        title: title,
                        description: description,
                        image: image,
                        price: price,
                        discount: discount,
                      ))),
              child: GridTile(
                footer: Container(
                  height: 60,
                  color: Colors.white70,
                  child: ListTile(
                      title: Text(title,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "\$$price",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.w800),
                          ),
              
                          Text(
                            "\$$discount",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w800,
                                decoration: TextDecoration.lineThrough),
                          )
                        ],
                      )),
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
