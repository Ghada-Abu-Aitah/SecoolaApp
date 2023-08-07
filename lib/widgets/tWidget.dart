import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class tWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const tWidget({
    required this.title,
    required this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 18.sp,
              fontFamily: 'SF Pro Rounded',
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.normal,
              fontSize: 14.sp,
              fontFamily: 'SF Pro Rounded',
            ),
          ),
        ],
      ),
    );
  }
}
