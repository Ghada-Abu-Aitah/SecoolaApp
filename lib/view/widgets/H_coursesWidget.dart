import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../models/API/category_controller.dart';
import '../../models/API/models/category.dart';
import '../screens/Getx.dart';

class CoursesItem {
  final String title;
  final String text1;
  final String text2;
  final String text3;

  CoursesItem({
    required this.title,
    required this.text1,
    required this.text2,
    required this.text3,
  });
}

class H_coursesWidget extends StatelessWidget {
  List<CoursesItem> items = [
    CoursesItem(
      title: 'Design Thinking Fundamental',
      text1: 'Robort Fox',
      text2: '\$150',
      text3: 'Best seller',
    ),
    CoursesItem(
      title: 'Flutter Class - Advance',
      text1: 'Wade Warren',
      text2: '\$24',
      text3: 'Recommended',
    ),
    CoursesItem(
      title: 'Figma Prototyping',
      text1: 'Jacob Nguyen',
      text2: '\$100',
      text3: 'Most sold',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            for (int i = 0; i < items.length; i++)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed(Getx.Course_c);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: 220.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink.shade50,
                      ),
                      child: Stack(
                        children: [
                          FutureBuilder<List<MyCategory>>(
                            future: CategoryController().getCategory(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else if (snapshot.hasData &&
                                  snapshot.data!.isNotEmpty) {
                                return Center(
                                  child: SizedBox(
                                    width: 220.w,
                                    height: 140.h,
                                    child: Image(
                                      image:
                                          NetworkImage(snapshot.data![i].image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              } else {
                                return Center(
                                  child: Text(
                                    'No Data',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26.sp,
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Container(
                              height: 28.h,
                              width: 28.w,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                Icons.favorite,
                                color: Color(0xFFFF6666),
                                size: 16,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              height: 28.h,
                              width: 49.w,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 6.w),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                    size: 14,
                                  ),
                                  SizedBox(width: 4.w),
                                  Text(
                                    '4.8',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FutureBuilder<List<MyCategory>>(
                          future: CategoryController().getCategory(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            } else if (snapshot.hasData &&
                                snapshot.data!.isNotEmpty) {
                              return Text(
                                snapshot.data![i].name,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.sp,
                                  fontFamily: 'SF Pro Rounded',
                                ),
                              );
                            } else {
                              return const Center(
                                child: Text(
                                  'No Data',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            const Icon(
                              Icons.person,
                              color: Colors.grey,
                              size: 18,
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              items[i].text1,
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 12.sp,
                                fontFamily: 'SF Pro Rounded',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Text(
                              items[i].text2,
                              style: TextStyle(
                                color: const Color(0xFF00A9B7),
                                fontWeight: FontWeight.normal,
                                fontSize: 16.sp,
                                fontFamily: 'SF Pro Rounded',
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Container(
                              height: 20.h,
                              width: 94.w,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCE2EA),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  items[i].text3,
                                  style: TextStyle(
                                    color: const Color(0xFFFF6666),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.sp,
                                    fontFamily: 'SF Pro Rounded',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
