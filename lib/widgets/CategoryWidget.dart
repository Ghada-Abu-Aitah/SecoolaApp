import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 76.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Icon(
                      Icons.image,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      'Art',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                        fontFamily: 'SF Pro Rounded',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              Container(
                width: 103.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.laptop,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      'Coding',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                        fontFamily: 'SF Pro Rounded',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              Container(
                width: 100.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.design_services,
                      color: Colors.red,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      'Design',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                        fontFamily: 'SF Pro Rounded',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              Container(
                width: 98.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.health_and_safety,
                      color: Colors.green,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      'Health',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                        fontFamily: 'SF Pro Rounded',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Container(
                width: 113.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Icon(
                      Icons.business_center,
                      color: Colors.brown,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      'Business',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                        fontFamily: 'SF Pro Rounded',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              Container(
                width: 120.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.shopping_bag_sharp,
                      color: Colors.pink.shade200,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      'Marketing',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                        fontFamily: 'SF Pro Rounded',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              Container(
                width: 111.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.run_circle_outlined,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      'Lifestyle',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                        fontFamily: 'SF Pro Rounded',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
