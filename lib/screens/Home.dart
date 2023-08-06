import 'package:flutter/material.dart';
import 'package:secoola/screens/Cart_f.dart';
import 'package:secoola/screens/Search.dart';

import 'package:secoola/widgets/CategoryWidget.dart';
import 'package:secoola/widgets/H_coursesWidget.dart';
import 'package:secoola/widgets/TopicWidget.dart';
import 'package:secoola/models/CustomBottomSheet.dart';
import 'package:secoola/screens/Not_BottomSheet.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchController = TextEditingController();
  bool result = true;

  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        toolbarHeight: 200.h,
        backgroundColor: const Color(0xFF00A9B7),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        centerTitle: false,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Hi, Dimas',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        SizedBox(width: 20.w),
                        const Icon(Icons.waving_hand_rounded,
                            color: Colors.yellow),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    const Text(
                      'Let\'s start learning!',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 60.w),
                Row(
                  children: [
                    Container(
                      height: 40.h,
                      width: 38.w,
                      decoration: BoxDecoration(
                        color: const Color(0xFFB2B2B2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            constraints: BoxConstraints(maxHeight: 678.h),
                            isScrollControlled: true,
                            context: context,
                            elevation: 10,
                            backgroundColor: Colors.white,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: 800.h,
                                child: const Cart_f(),
                              );
                            },
                          );
                        },
                        icon: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,

                          children: [
                            Center(
                              child: Icon(
                                Icons.shopping_cart_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: const Color(0xFFB2B2B2),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            constraints: BoxConstraints(maxHeight: 678.h),
                            isScrollControlled: true,
                            context: context,
                            elevation: 10,
                            backgroundColor: Colors.white,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: 800.h,
                                child: const Not_BottomSheet(),
                              );
                            },
                          );
                        },
                        icon: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,

                          children: [
                            Center(
                              child: Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),

                      ),

                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Search()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.search, color: Colors.grey),
                    ),
                    Expanded(
                      child: TextField(
                        controller: _searchController,
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular course',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 18.sp,
                      fontFamily: 'SF Pro Rounded',
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.normal,
                      fontSize: 14.sp,
                      fontFamily: 'SF Pro Rounded',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            H_coursesWidget(),
            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 18.sp,
                          fontFamily: 'SF Pro Rounded',
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  const CategoryWidget(),
                ],
              ),
            ),
            SizedBox(height: 50.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Your topic',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 18.sp,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Container(
                        height: 20.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Design',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.normal,
                              fontSize: 12.sp,
                              fontFamily: 'SF Pro Rounded',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.normal,
                      fontSize: 14.sp,
                      fontFamily: 'SF Pro Rounded',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            TopicWidget(),
            SizedBox(height: 40.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Your topic',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 18.sp,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Container(
                        height: 20.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Coding',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.normal,
                              fontSize: 12.sp,
                              fontFamily: 'SF Pro Rounded',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.normal,
                      fontSize: 14.sp,
                      fontFamily: 'SF Pro Rounded',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            TopicWidget(),
            SizedBox(height: 40.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Your topic',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 18.sp,
                          //    fontFamily: 'SF Pro Rounded',
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Container(
                        height: 20.h,
                        width: 75.w,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Marketing',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.normal,
                              fontSize: 12.sp,
                              fontFamily: 'SF Pro Rounded',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.normal,
                      fontSize: 14.sp,
                      fontFamily: 'SF Pro Rounded',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            TopicWidget(),
            SizedBox(height: 60.h),
          ],
        ),
      ),
    );
  }
}
