import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/values/values.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Product {
  String img;
  String name;
  String category;
  String price;
  Product(this.img, this.name, this.category, this.price);
  //ImagesPath.bakImage, 'Apple iPhone 12', 'Electronics', '89900'
}

class CartPage extends StatefulWidget {
  CartPage();

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<int> count = [1, 1, 1];
  @override
  Widget build(BuildContext context) {
    // items[0].img, items[1].img, items[2].img, items[3].img,
    
    List<Product> items = [
      Product(
          ImagesPath.bakImage, 'Apple iPhone 12', 'Electronics', '\$ 89900.00'),
      Product(
          ImagesPath.oninonImg, 'Samsung Note 20', 'Mobiles', '\$ 69900.00'),
      Product(
          ImagesPath.foodImage, 'MacBook Air Pro', 'Laptops', '\$ 149900.00'),
           Product(
          ImagesPath.bakImage, 'Apple iPhone 12', 'Electronics', '\$ 69900.00'),
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              FontAwesomeIcons.arrowCircleLeft,
              color: AppColors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(StringConst.CART, style: TextStyle(color: Colors.black)),
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(Sizes.RADIUS_12),
                          // Image.assets('Values')
                          child: Image.asset(
                            items[index].img,
                            height: 96.0,
                          ),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              items[index].name,
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Build our own Icon with add or subtract data
                              ],
                            )
                          ],
                        )
                      ],
                    ));
              },
            )
          ],
        )
        // bottomNavigationBar: Bo,
        );
  }
}
