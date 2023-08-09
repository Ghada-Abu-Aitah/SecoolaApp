import 'package:flutter/material.dart';
import 'package:secoola/screens/Cart_f.dart';
import 'package:secoola/screens/Search.dart';
import 'package:secoola/widgets/CategoryWidget.dart';
import 'package:secoola/widgets/H_coursesWidget.dart';
import 'package:secoola/widgets/TopicWidget.dart';
import 'package:secoola/screens/Not_BottomSheet.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/widgets/tWidget.dart';
import 'package:secoola/widgets/topWidget.dart';

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
    void _bottom(BuildContext cont) {
      showModalBottomSheet(
        constraints: BoxConstraints(maxHeight: 800.h),
        isScrollControlled: true,
        context: cont,
        elevation: 10,
        backgroundColor: Colors.transparent,
        builder: (cont) => Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(35.r)),
            color: Colors.white,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 650.h,
                      child: const Cart_f(),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -70,
                right: 25,
                child: Container(
                  height: 52.h,
                  width: 52.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(cont);
                    },
                    icon: Icon(Icons.cancel,
                        size: 30, color: Colors.grey.shade500),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    void _bottom_N(BuildContext cont) {
      showModalBottomSheet(
        constraints: BoxConstraints(maxHeight: 800.h),
        isScrollControlled: true,
        context: cont,
        elevation: 10,
        backgroundColor: Colors.transparent,
        builder: (cont) => Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(35.r)),
            color: Colors.white,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 650.h,
                      child: const Not_BottomSheet(),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -70,
                right: 25,
                child: Container(
                  height: 52.h,
                  width: 52.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(cont);
                    },
                    icon: Icon(Icons.cancel,
                        size: 30, color: Colors.grey.shade500),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

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
                          _bottom(context);
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
                          _bottom_N(context);
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
            const tWidget(
              title: 'Popular course',
              subtitle: 'See all',
            ),
            SizedBox(height: 20.h),
            H_coursesWidget(),
            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const tWidget(
                    title: 'Categories',
                    subtitle: 'See all',
                  ),
                  SizedBox(height: 20.h),
                  const CategoryWidget(),
                ],
              ),
            ),
            SizedBox(height: 50.h),
            const topWidget(
              title: 'Your Topic',
              title2: 'Design',
              subtitle: 'See all',
            ),
            SizedBox(height: 20.h),
            TopicWidget(),
            SizedBox(height: 40.h),
            const topWidget(
              title: 'Your Topic',
              title2: 'Coding',
              subtitle: 'See all',
            ),
            SizedBox(height: 20.h),
            TopicWidget(),
            SizedBox(height: 40.h),
            const topWidget(
              title: 'Your Topic',
              title2: 'Marketing',
              subtitle: 'See all',
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
