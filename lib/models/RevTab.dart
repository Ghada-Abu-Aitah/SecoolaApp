import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RevTab extends StatelessWidget {
  const RevTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Student reviews',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(height: 16.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              SizedBox(width: 8.w),
              Text(
                '4.8 out of 5',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Text(
                'Sort by',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(width: 5.w),
              Icon(Icons.arrow_drop_down_sharp),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        Column(
          children: [
            Row(
              children: [
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 40.w),
                            Container(
                              width: 36.w,
                              height: 36.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.yellow.shade300),
                            ),
                            SizedBox(width: 20.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 30.w),
                                Text(
                                  'Reviewer Username',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    fontFamily: 'SF Pro Rounded',
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  '1 day ago',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.sp,
                                    fontFamily: 'SF Pro Rounded',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 80.w),
                            Icon(Icons.star, color: Colors.yellow),
                            SizedBox(width: 5.w),
                            Text(
                              '4.8',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 16.sp,
                                fontFamily: 'SF Pro Rounded',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Description this is a simple description that explains the description about the class',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.sp,
                  height: 1.5.h,
                  fontFamily: 'SF Pro Rounded',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}