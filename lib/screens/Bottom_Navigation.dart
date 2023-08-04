import 'package:flutter/material.dart';
import 'package:secoola/screens/Account.dart';
import 'package:secoola/screens/Home.dart';
import 'package:secoola/screens/My_course.dart';
import 'package:secoola/screens/Wishlist.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bottom_Navigation extends StatefulWidget {
  const Bottom_Navigation({super.key});

  @override
  State<Bottom_Navigation> createState() => _Bottom_NavigationState();
}

class _Bottom_NavigationState extends State<Bottom_Navigation> {
  int _currentIndex = 0;
  final List<Widget> Pages = <Widget>[
    const Home(),
    const My_course(),
    const Wishlist(),
    const Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value) {
          setState(() => _currentIndex = value);
          print(value);
        },
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 10,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        selectedFontSize: 14.sp,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books),
            label: 'My Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
