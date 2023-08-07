import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/screens/Course_c.dart';

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
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Course_c()));
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: 220.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink.shade50,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
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
                                SizedBox(width: 40.w),
                                Container(
                                  height: 28.h,
                                  width: 28.w,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFFFFF),
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.all(10),
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
                        SizedBox(width: 30.w),
                        Text(
                          items[i].title,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.sp,
                            fontFamily: 'SF Pro Rounded',
                          ),
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
                                color: Colors.blue,
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
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Center(
                                child: Text(
                                  items[i].text3,
                                  style: TextStyle(
                                    color: Colors.red,
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
