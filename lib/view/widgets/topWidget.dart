import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class topWidget extends StatelessWidget {
  final String title;
  final String title2;
  final String subtitle;
  const topWidget({super.key,
    required this.title,
    required this.title2,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(width: 10.w),
              Container(
                height: 20.h,
                width: 70.w,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    title2,
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
          Text(
            subtitle,
            style: TextStyle(
              color: const Color(0xFF00A9B7),
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
