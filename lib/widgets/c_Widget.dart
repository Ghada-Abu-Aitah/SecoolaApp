import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/screens/Continue_c.dart';

class Course extends StatelessWidget {
  const Course({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const Continue_c()));
          },
          child: Container(
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.yellow.shade200),
          ),
        ),
        SizedBox(width: 20.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 30.w),
            Text(
              'Design Thingking Fundamental',
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
                Icon(
                  Icons.person,
                  color: Colors.grey,
                  size: 14,
                ),
                SizedBox(width: 5.w),
                Text(
                  'Dianne Russell',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 12.sp,
                    fontFamily: 'SF Pro Rounded',
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h, width: 10.w),
            Container(
              height: 25.h,
              width: 60.w,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Label',
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
      ],
    );
  }
}
