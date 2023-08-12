import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoursesItem {
  final String title;
  final String text1;

  CoursesItem({
    required this.title,
    required this.text1,
  });
}

class CoursesWidget extends StatelessWidget {
  List<CoursesItem> items = [
    CoursesItem(
      title: 'Design Thinking',
      text1: 'Robort Fox',
    ),
    CoursesItem(
      title: 'Flutter Advance',
      text1: 'Wade Warren',
    ),
    CoursesItem(
      title: 'Figma Prototyping',
      text1: 'Jacob Nguyen',
    ),
    CoursesItem(
      title: 'UX Basic 101',
      text1: 'Cameron Williamson',
    ),
    CoursesItem(
      title: 'UX Deliverable',
      text1: 'Savannah Nguyen',
    ),
    CoursesItem(
      title: 'Gather User',
      text1: 'Brookly Simmons',
    ),
    CoursesItem(
      title: 'User Behaviour',
      text1: 'Esther Howard',
    ),
    CoursesItem(
      title: 'Python Basic',
      text1: 'Jacob Nguyen',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 210 / 240,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 0; i < items.length; i++)
          Column(
            children: [
              Expanded(
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                Icons.favorite,
                                color: Color(0xFFFF6666),
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
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                          '\$24',
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
                          width: 50.w,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Label',
                              style: TextStyle(
                                color: const Color(0xFF00A9B7),
                                fontWeight: FontWeight.normal,
                                fontSize: 12.sp,
                                fontFamily: 'SF Pro Rounded',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ],
          ),
      ],
    );
  }
}
