import 'package:ecommerce/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ecommerce/values/values.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Address {
  late String address;
  late String heading;
  Address(this.heading, this.address);
}

class Addresspage extends StatefulWidget {
  const Addresspage({Key? key}) : super(key: key);

  @override
  _AddresspageState createState() => _AddresspageState();
}

class _AddresspageState extends State<Addresspage> {
  List<int> radioButtons = [0, -1, -1];
  @override
  Widget build(BuildContext context) {
    List<Address> addressList = [
      Address('Home', '281, 2nd floor, ZigZag Street, Chennai - 600018'),
      Address('Work', '147, No floors, ZigZag Street, Chennai - 600018'),
      Address(
          'Temporary', '36, Ground floor, ZigZag Street, Hyderabad - 600018'),
    ];
    return Scaffold(
      body:
          // FadedSlideAnimation(
          //   child:
          Column(
        children: [
          Stack(
            children: [
              Image.asset(ImagesPath.headerImg,
                  height: Sizes.HEIGHT_200, fit: BoxFit.fitHeight),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: Colors.white,
                ),
                padding: EdgeInsets.only(top: 70.0),
              ),
              Positioned.directional(
                textDirection: Directionality.of(context),
                start: MediaQuery.of(context).size.width / 3.0,
                top: 70.0,
                child: Text(
                  StringConst.SELECTED_ADDRESS.toUpperCase(),
                  style: TextStyle(
                      fontSize: Sizes.TEXT_SIZE_20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      letterSpacing: 1.0),
                ),
              ),
              Positioned.directional(
                textDirection: Directionality.of(context),
                start: MediaQuery.of(context).size.width / 3.0,
                top: 130.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      CupertinoIcons.location,
                      color: Colors.white,
                    ),
                    Text('...',
                        style: TextStyle(
                            color: Colors.white, fontSize: Sizes.TEXT_SIZE_36)),
                    Icon(
                      CupertinoIcons.creditcard,
                      color: Colors.white,
                    ),
                    Text('...',
                        style: TextStyle(
                            color: Colors.white, fontSize: Sizes.TEXT_SIZE_36)),
                    Icon(
                      CupertinoIcons.car,
                      color: Colors.white,
                    ),
                    Text('...',
                        style: TextStyle(
                            color: Colors.white, fontSize: Sizes.TEXT_SIZE_36)),
                    Icon(
                      CupertinoIcons.home,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
          ListView.builder(
              padding: EdgeInsets.all(0.0),
              itemCount: 3, // addressList.length
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: Sizes.PADDING_40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Radio(
                          value: index,
                          groupValue: radioButtons[index],
                          onChanged: (value) {
                            setState(() {
                              for (int i = 0; i < radioButtons.length; i++) {
                                radioButtons[i] = -1;
                              }
                              radioButtons[index] = index;
                            });
                          }),
                      SizedBox(
                        width: Sizes.WIDTH_8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            addressList[index].heading,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: Sizes.HEIGHT_20,
                          ),
                          Text(
                            addressList[index].address,
                            style: TextStyle(
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
          Spacer(),
          CustomButton(
              'Check Out',
              Sizes.HEIGHT_48,
              Sizes.WIDTH_200,
              AppColors.green,
              Icon(FontAwesomeIcons.creditCard, color: Colors.white),
              () => Navigator.pushNamed(context, 'payment'),
              'payment',
              Sizes.SIZE_8),
        ],
      ),
      //   beginOffset: Offset(0.0, 0.0),
      //   endOffset: Offset(0.0, 0.0),
      //   slideCurve: Curves.linearToEaseOut,
      // ),
    );
  }
}
