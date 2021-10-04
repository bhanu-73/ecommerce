import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
      // Product(
      //     ImagesPath.bakImage, 'Apple iPhone 12', 'Electronics', '\$ 69900.00'),
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
      body: FadedSlideAnimation(
            beginOffset: Offset(0.0, 0.3),
            endOffset: Offset(0.0, 0.0),
            slideCurve: Curves.linearToEaseOut,
            child: Stack(
              children: [
                ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Padding(
                      padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 12.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ClipRRect(
                            borderRadius:
                                      BorderRadius.circular(Sizes.RADIUS_12),
                                  // Image.assets('Values')
                                  child: Image.asset(
                                    items[index].img,
                                    height: 96.0,
                                  ),
                                ),
                                SizedBox(
                        width: Sizes.WIDTH_16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      items[index].name,
                                      style: TextStyle(color: Colors.black),
                                    ),
                          SizedBox(height: Sizes.HEIGHT_8),
                                    Text(
                                      items[index].category,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    ),
                          SizedBox(height: Sizes.HEIGHT_16),
                          Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        // Build our own Icon with add or subtract data
                              buildIconButton(
                                            Icons.remove, index, items, count),
                                        SizedBox(
                                          width: Sizes.WIDTH_16,
                                        ),
                                        Text(
                                          '${count[index]}',
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: Sizes.WIDTH_16,
                                        ),
                                        buildIconButton(
                                            Icons.add, index, items, count),
                                        SizedBox(
                                          width: Sizes.WIDTH_40,
                                        ),
                                        // IconData icon, int index, items, count
                            ],
                                    )
                                  ],
                      ),
                                Spacer(),
                                Text(
                                  items[index].price.toString(),
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.bold),
                      )
                              ],
                            ));
                      },
          ),
                    SizedBox(
                      height: Sizes.HEIGHT_200,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.grey.shade200,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Apply Promo Code',
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            suffixIcon: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Apply',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColors.black, fontSize: 22.0),
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                      SizedBox(
                        height: Sizes.HEIGHT_8,
                      ),
                      // buildRow('Cart Value', '\$ 100.00'),
                      buildRow('Delivery Charge', '\$ 0.00'),
                      buildRow('Tax', '\$ 10.00'),
                      // buildRow('Promo Code', '\$ 100.00'),
                      buildRow('Total Price', '\$ 99990.00'),
                      SizedBox(
                        height: Sizes.HEIGHT_8,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, 'edashboard'),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: Sizes.HEIGHT_48,
                            color: Colors.redAccent,
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Checkout Now',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Spacer(
                                    flex: 6,
                                  ),
                                  Text(
                                    'Total: ',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Spacer(
                                    flex: 2,
                                  ),
                                  Text('\$ 99890.00',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0)),
                                ],
                              ),
                            )),
                      )

                    ]),
                  ),
                ),
              ],
            )

      
      )
      
      // bottomNavigationBar: Bo,
        );
  }
}

Container buildIconButton(IconData icon, int index, items, count) {
  return Container(
      height: 35.0,
      width: 35.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.grey, width: 0.0),
      ),
      child: IconButton(
        onPressed: () {
          // setState(() {
          //   if (icon == Icons.remove) {
          //     if (count[index] > 0) {
          //       count[index]--;
          //     }
          //   } else {
          //     count[index]++;
          //   }
          // });
        },
        icon: Icon(icon, size: 16.0, color: Colors.grey),
      ));
}

Padding buildRow(String text, String price) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    child: Row(
      children: [
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: Sizes.TEXT_SIZE_16),
        ),
        Spacer(),
        Text(
          price,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: Sizes.TEXT_SIZE_18),
        ),
      ],
    ),
  );
}
