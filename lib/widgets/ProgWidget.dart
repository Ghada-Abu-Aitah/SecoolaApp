import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgWidget extends StatelessWidget {
  const ProgWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
