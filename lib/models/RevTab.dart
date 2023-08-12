import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RevTab extends StatelessWidget {
  const RevTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h),
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star, color: Colors.yellow),
                const Icon(Icons.star, color: Colors.yellow),
                const Icon(Icons.star, color: Colors.yellow),
                const Icon(Icons.star, color: Colors.yellow),
                const Icon(Icons.star, color: Colors.yellow),
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
        ),
        SizedBox(height: 30.h),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
                  const Icon(Icons.arrow_drop_down_sharp),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Column(
          children: [
            Row(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 10.w),
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
                          SizedBox(width: 60.w),
                          const Icon(Icons.star, color: Colors.yellow),
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
              ],
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
