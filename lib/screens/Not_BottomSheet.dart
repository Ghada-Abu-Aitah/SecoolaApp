import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Not_BottomSheet extends StatefulWidget {
  const Not_BottomSheet({super.key});

  @override
  State<Not_BottomSheet> createState() => _Not_BottomSheetState();
}

class _Not_BottomSheetState extends State<Not_BottomSheet> {
  bool result = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: Color(0xFFFAFAFA),
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          centerTitle: true,
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // Center the Row within the Column
                children: [
                  Text(
                    'Notification',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      fontSize: 24.sp,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Icon(
                    Icons.waving_hand_rounded,
                    color: Colors.orangeAccent,
                  ),
                ],
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Today',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 18.sp,
                    fontFamily: 'SF Pro Rounded',
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 80.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          children: [
                            SizedBox(width: 10.w),
                            IconButton(
                              icon: Icon(
                                Icons.circle,
                                size: 28,
                                color: Color(0xFF00A9B7),
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(width: 15.w),
                            Column(
                              children: [
                                Text(
                                  'Your payment is success',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    fontFamily: 'SF Pro Rounded',
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'Start Your course now ',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.sp,
                                    fontFamily: 'SF Pro Rounded',
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.chevron_right_outlined),
                                    onPressed: () {},
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
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 80.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          children: [
                            SizedBox(width: 10.w),
                            IconButton(
                              icon: Icon(
                                Icons.notifications,
                                size: 28,
                                color: Color(0xFF00A9B7),
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(width: 15.w),
                            Column(
                              children: [
                                Text(
                                  'Daily reminder',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    fontFamily: 'SF Pro Rounded',
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'Continue you recent course',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.sp,
                                    fontFamily: 'SF Pro Rounded',
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.chevron_right_outlined),
                                    onPressed: () {},
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
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Yesterday',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 18.sp,
                    fontFamily: 'SF Pro Rounded',
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 80.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          children: [
                            SizedBox(width: 10.w),
                            IconButton(
                              icon: Icon(
                                Icons.cloud_download,
                                size: 28,
                                color: Color(0xFF00A9B7),
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(width: 15.w),
                            Column(
                              children: [
                                Text(
                                  'Download your certificate',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    fontFamily: 'SF Pro Rounded',
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'Go to account page to download..',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.sp,
                                    fontFamily: 'SF Pro Rounded',
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.chevron_right_outlined),
                                    onPressed: () {},
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
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 80.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          children: [
                            SizedBox(width: 10.w),
                            IconButton(
                              icon: Icon(
                                Icons.sunny,
                                size: 28,
                                color: Color(0xFF00A9B7),
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(width: 15.w),
                            Column(
                              children: [
                                Text(
                                  'Summer sale!',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    fontFamily: 'SF Pro Rounded',
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Get the best offer only for you',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.sp,
                                    fontFamily: 'SF Pro Rounded',
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.chevron_right_outlined),
                                    onPressed: () {},
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
