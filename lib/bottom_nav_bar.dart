import 'package:flutter/material.dart';
import 'package:laundry_app_using_getx/utils/constants/color.dart';
import 'package:laundry_app_using_getx/view/screen/home/home.dart';
import 'package:laundry_app_using_getx/view/screen/profile/profile.dart';
import 'package:laundry_app_using_getx/view/screen/show_cart_products/show_cart_products.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 1;
  List<Widget> page = [
    const ShowCartProducts(),
    const Home(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xffff1a8c),
        unselectedItemColor: CommonColor.bgColor,
        backgroundColor: CommonColor.blue,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,size: 30,), label: 'Cart',),
          BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 30,), label: 'Home'),
           BottomNavigationBarItem(
               icon: Icon(Icons.person,size: 30,), label: 'Profile'),
        ],
      ),
      body: page.elementAt(currentIndex),
    );
  }
}