import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/screens/Completed.dart';
import 'package:secoola/screens/Continue_c.dart';
import 'package:secoola/widgets/c_Widget.dart';

class My_course extends StatefulWidget {
  const My_course({super.key});

  @override
  State<My_course> createState() => My_courseState();
}

class My_courseState extends State<My_course> {
  bool result = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        toolbarHeight: 186.h,
        backgroundColor: Color(0xFF00A9B7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30.r),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  'My Course',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      fontSize: 24.sp),
                ),
              ],
            ),
            SizedBox(height: 50.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Icon(Icons.search, color: Colors.grey),
                      ),
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
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
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(height: 60.h),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF00A9B7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      minimumSize: Size(158.w, 38.h),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 8.w),
                        Text(
                          'Ongoing',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Completed()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey.shade100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      minimumSize: Size(158.w, 38.h),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 8.w),
                        Text(
                          'Complete',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Container(
                child: Column(
                  children: [
                    Course(),
                    SizedBox(height: 15.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Progress',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 12.sp,
                                fontFamily: 'SF Pro Rounded',
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Align(
                              child: Text(
                                '20/29 lesson',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.sp,
                                  fontFamily: 'SF Pro Rounded',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 100.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Due Time',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 12.sp,
                                fontFamily: 'SF Pro Rounded',
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              'November 2,2021',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.sp,
                                fontFamily: 'SF Pro Rounded',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.h),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Continue_c()));
                },
                child: LinearPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  lineHeight: 10.h,
                  percent: 0.8,
                  progressColor: Color(0xFF00CDB1),
                  backgroundColor: Color(0xFFEAEAEA),
                ),
              ),
              SizedBox(height: 30.h),
              Container(
                child: Column(
                  children: [
                    Course(),
                    SizedBox(height: 15.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Progress',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 12.sp,
                                fontFamily: 'SF Pro Rounded',
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Align(
                              child: Text(
                                '7/32 lesson',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.sp,
                                  fontFamily: 'SF Pro Rounded',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 100.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Due Time',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 12.sp,
                                fontFamily: 'SF Pro Rounded',
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              'August 24,2021',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.sp,
                                fontFamily: 'SF Pro Rounded',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.h),
              LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                lineHeight: 10.h,
                percent: 0.2,
                progressColor: Color(0xFF00CDB1),
                backgroundColor: Color(0xFFEAEAEA),
              ),
              SizedBox(height: 30.h),
              Container(
                child: Column(
                  children: [
                    Course(),
                    SizedBox(height: 15.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Progress',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 12.sp,
                                fontFamily: 'SF Pro Rounded',
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Align(
                              child: Text(
                                '28/40 lesson',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.sp,
                                  fontFamily: 'SF Pro Rounded',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 100.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Due Time',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 12.sp,
                                fontFamily: 'SF Pro Rounded',
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              'November 2,2021',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.sp,
                                fontFamily: 'SF Pro Rounded',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.h),
              LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                lineHeight: 10.h,
                percent: 0.6,
                progressColor: Color(0xFF00CDB1),
                backgroundColor: Color(0xFFEAEAEA),
              ),
              SizedBox(height: 25.h),
            ],
          ),
        ),
      ),
    );
  }
}
