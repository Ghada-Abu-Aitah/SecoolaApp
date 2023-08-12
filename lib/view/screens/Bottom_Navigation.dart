import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../widgets/Search_barWidget.dart';
import '../widgets/icon_widget.dart';
import 'Account.dart';
import 'Getx.dart';
import 'Home.dart';
import 'My_course.dart';
import 'Wishlist.dart';

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

  final List<PreferredSizeWidget> _appBars = [
    _customAppBarHome(),
    _customAppBarWithTitleAndSearch('My Course', Colors.white),
    _customAppBarWithTitleAndSearch('Wishlist', Colors.white),
    _customAppBarAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBars[_currentIndex],
      body: Pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value) {
          setState(() => _currentIndex = value);
        },
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 10,
        selectedItemColor: const Color(0xFF00A9B7),
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
  static PreferredSizeWidget _customAppBarHome() {
    final TextEditingController searchController = TextEditingController();
    return AppBar(
      automaticallyImplyLeading: false,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      toolbarHeight: 222.h,
      backgroundColor: const Color(0xFF00A9B7),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 10.w),
                    const Text(
                      'Hi, Dimas',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(width: 20.w),
                    const Icon(
                      Icons.waving_hand_rounded,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                const Spacer(),
                const icon_widget(),
              ],
            ),
            SizedBox(height: 35.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(Getx.Search);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.grey),
                    Expanded(
                      child: TextField(
                        controller: searchController,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          hintText: 'Search for anything..',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static PreferredSizeWidget _customAppBarWithTitleAndSearch(
      String title, Color color) {
    return AppBar(
      automaticallyImplyLeading: false,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      toolbarHeight: 186.h,
      backgroundColor: const Color(0xFF00A9B7),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal,
                  fontSize: 24.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const Search_bar(),
        ],
      ),
    );
  }
  static PreferredSizeWidget _customAppBarAccount() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xFFFAFAFA),
      elevation: 0,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      title: Text(
        'Profile',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
          fontSize: 24.sp,
        ),
      ),
    );
  }
}
