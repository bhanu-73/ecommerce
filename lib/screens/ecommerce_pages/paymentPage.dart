import 'package:ecommerce/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ecommerce/values/values.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentPage extends StatefulWidget {
  // final VoidCallback onBackButtonPressed;
  PaymentPage();
  //this.onBackButtonPressed

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  List<int> radioButtons = [0, -1, -1];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(ImagesPath.headerImg,
                  height: Sizes.HEIGHT_200, fit: BoxFit.fitHeight),
              IconButton(
                onPressed: () {
                  //widget.onBackButtonPressed();
                },
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
                  StringConst.SELECT_PAYMENT_MODE.toUpperCase(),
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
          buildPaymentHead(context, 'Card Payment'),
          buildPaymentType(
            Icon(
              CupertinoIcons.creditcard,
              color: Colors.white,
            ),
            'Credit Card',
          ),
          Divider(thickness: 0.5, height: Sizes.HEIGHT_10),
          buildPaymentType(
            Icon(
              CupertinoIcons.creditcard,
              color: Colors.white,
            ),
            'Debit Card',
          ),
          buildPaymentHead(context, 'COD'),
          buildPaymentType(
            Icon(
              CupertinoIcons.creditcard,
              color: Colors.white,
            ),
            'Cash On Delivery',
          ),
          Divider(thickness: 0.5, height: Sizes.HEIGHT_10),
          buildPaymentHead(context, 'UPI'),
          buildPaymentType(
            Image.asset(''),
            'PhonePe',
          ),
          Divider(thickness: 0.5, height: Sizes.HEIGHT_10),
          buildPaymentType(
            Image.asset(''),
            'GPay',
          ),
          Spacer(),
          CustomButton(
              'Make Payment',
              Sizes.HEIGHT_48,
              Sizes.WIDTH_200,
              AppColors.green,
              Icon(FontAwesomeIcons.creditCard, color: Colors.white),
              () => Navigator.pushNamed(context, 'orderconfirm'),
              'orderconfirm',
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

Padding buildPaymentHead(BuildContext context, String name) {
  return Padding(
    padding: EdgeInsets.only(
        left: Sizes.PADDING_24,
        right: Sizes.PADDING_24,
        top: Sizes.PADDING_14,
        bottom: Sizes.PADDING_4),
    child: Text(
      name,
      style: TextStyle(
          fontSize: Sizes.TEXT_SIZE_16,
          color: Color(0xffa9a9a9),
          fontWeight: FontWeight.w500),
    ),
  );
}

Widget buildPaymentType(var icon, String name) {
  return InkWell(
    onTap: () {},
    child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 28.0),
        child: Row(
          children: [
            CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                child: icon,
                radius: Sizes.RADIUS_20),
            SizedBox(width: Sizes.WIDTH_20),
            Text(
              name,
              style: TextStyle(
                  fontSize: Sizes.TEXT_SIZE_18,
                  color: Color(0xffa9a9a9),
                  fontWeight: FontWeight.w500),
            )
          ],
        )),
  );
}
