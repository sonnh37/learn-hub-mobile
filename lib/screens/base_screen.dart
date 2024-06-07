import 'package:flutter/material.dart';
import 'package:smart_thrive_mobile/constants/color.dart';
import 'package:smart_thrive_mobile/constants/icons.dart';
import 'package:smart_thrive_mobile/constants/size.dart';
import 'package:smart_thrive_mobile/screens/dashboard.dart';
import 'package:smart_thrive_mobile/screens/home_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    Dashboard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        backgroundColor: Colors.white,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              icFeatured,
              height: kBottomNavigationBarItemSize,
            ),
            icon: Image.asset(
              icFeaturedOutlined,
              height: kBottomNavigationBarItemSize,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              icLearning,
              height: kBottomNavigationBarItemSize,
            ),
            icon: Image.asset(
              icLearningOutlined,
              height: kBottomNavigationBarItemSize,
            ),
            label: 'My Learning',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              icWishlist,
              height: kBottomNavigationBarItemSize,
            ),
            icon: Image.asset(
              icWishlistOutlined,
              height: kBottomNavigationBarItemSize,
            ),
            label: 'WishList',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              icSetting,
              height: kBottomNavigationBarItemSize,
            ),
            icon: Image.asset(
              icSettingOutlined,
              height: kBottomNavigationBarItemSize,
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectIndex,
        onTap: (int index) {
          setState(() {
            _selectIndex = index;
          });
        },
      ),
    );
  }
}
