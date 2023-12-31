import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotWidget extends StatefulWidget {
  const NotWidget({super.key});

  @override
  State<NotWidget> createState() => _NotWidgetState();
}

class _NotWidgetState extends State<NotWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? newValue) {
                    setState(() {
                      isChecked = newValue ?? false;
                    });
                  },
                ),
                Container(
                  height: 100.h,
                  width: 305.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 5.w),
                      Container(
                        width: 68.w,
                        height: 68.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue.shade100),
                      ),
                      SizedBox(width: 10.w),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 20.w),
                            Text(
                              'Design Thingking Fundam...',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.sp,
                                fontFamily: 'SF Pro Rounded',
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                const Icon(
                                  Icons.person,
                                  color: Colors.grey,
                                  size: 18,
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
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                Text(
                                  '\$72',
                                  style: TextStyle(
                                    color: const Color(0xFF00A9B7),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16.sp,
                                    fontFamily: 'SF Pro Rounded',
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Container(
                                  height: 25.h,
                                  width: 60.w,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Popular',
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Row(
              children: [
                Text(
                  'Remove',
                  style: TextStyle(
                    color:  const Color(0xFFFF6666),
                    fontWeight: FontWeight.normal,
                    fontSize: 12.sp,
                    fontFamily: 'SF Pro Rounded',
                  ),
                ),
                SizedBox(width: 40.w),
                Text(
                  'Move to wishlist',
                  style: TextStyle(
                    color: const Color(0xFF00A9B7),
                    fontWeight: FontWeight.normal,
                    fontSize: 12.sp,
                    fontFamily: 'SF Pro Rounded',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
