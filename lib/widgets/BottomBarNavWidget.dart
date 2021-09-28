import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ecommerce/values/values.dart';

class BottomBarNavWidget extends StatefulWidget {
  const BottomBarNavWidget({Key? key}) : super(key: key);

  @override
  _BottomBarNavWidgetState createState() => _BottomBarNavWidgetState();
}

class _BottomBarNavWidgetState extends State<BottomBarNavWidget> {
  @override
  Widget build(BuildContext context) {
    int _selectedTab = 0;
    void _onTapOfTab(int index) {
      setState(() {
        _selectedTab = index;
      });
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.home),
          label: StringConst.HOME,
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.user),
          label: StringConst.PROFILE,
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.shoppingBasket),
          label: StringConst.CART,
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.book),
          label: StringConst.BOOK,
        )
      ],
      currentIndex: _selectedTab,
      onTap: _onTapOfTab,
      selectedItemColor: Color(0xFFdd5353),
    );
  }
}
