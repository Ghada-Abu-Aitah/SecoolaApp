import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/screens/Bottom_Navigation.dart';
import 'package:secoola/screens/Home.dart';
import 'package:secoola/screens/My_course.dart';

class Pay_Success extends StatefulWidget {
  const Pay_Success({super.key});

  @override
  State<Pay_Success> createState() => _Pay_SuccessState();
}

class _Pay_SuccessState extends State<Pay_Success> {
  bool result = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300.w,
                      height: 180.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow.shade300),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Transaction success',
                                style: TextStyle(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              IconButton(
                                icon: const Icon(
                                  Icons.celebration,
                                  size: 24,
                                  color: Colors.red,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 21.h,
                          ),
                          Text(
                            'Congratulation! Your transaction is successful,\nyou can start your course now.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 60.h),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Bottom_Navigation()));
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF00A9B7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              minimumSize: Size(335.w, 52.h),
                            ),
                            child: Text(
                              'Go to my course',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          SizedBox(height: 30.h),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Bottom_Navigation()));
                            },
                            child: Text(
                              'Back to Home',
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}