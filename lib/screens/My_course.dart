import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/screens/Completed.dart';
import 'package:secoola/screens/Continue_c.dart';
import 'package:secoola/widgets/ProgWidget.dart';
import 'package:secoola/widgets/Search_barWidget.dart';
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
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        toolbarHeight: 186.h,
        backgroundColor: const Color(0xFF00A9B7),
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
            const Search_bar(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
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
                      primary: const Color(0xFF00A9B7),
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
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Completed()));
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
              Column(
                children: [
                  const Course(),
                  SizedBox(height: 15.h),
                  const ProgWidget(),
                ],
              ),
              SizedBox(height: 25.h),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Continue_c()));
                },
                child: LinearPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  lineHeight: 10.h,
                  percent: 0.8,
                  progressColor: const Color(0xFF00CDB1),
                  backgroundColor: const Color(0xFFEAEAEA),
                ),
              ),
              SizedBox(height: 30.h),
              Column(
                children: [
                  const Course(),
                  SizedBox(height: 15.h),
                  const ProgWidget(),
                ],
              ),
              SizedBox(height: 25.h),
              LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                lineHeight: 10.h,
                percent: 0.2,
                progressColor: const Color(0xFF00CDB1),
                backgroundColor: const Color(0xFFEAEAEA),
              ),
              SizedBox(height: 30.h),
              Column(
                children: [
                  const Course(),
                  SizedBox(height: 15.h),
                  const ProgWidget(),
                ],
              ),
              SizedBox(height: 25.h),
              LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                lineHeight: 10.h,
                percent: 0.6,
                progressColor: const Color(0xFF00CDB1),
                backgroundColor: const Color(0xFFEAEAEA),
              ),
              SizedBox(height: 25.h),
            ],
          ),
        ),
      ),
    );
  }
}
