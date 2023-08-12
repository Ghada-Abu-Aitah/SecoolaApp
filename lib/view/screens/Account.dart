import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../widgets/accountWidget.dart';
import 'Getx.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 10.w),
                    Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.yellow.shade100),
                    ),
                    SizedBox(width: 20.w),
                    Column(
                      children: [
                        SizedBox(width: 30.w),
                        Text(
                          'Raymond Skyberg',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 16.sp,
                            fontFamily: 'SF Pro Rounded',
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          'ghada@gmail.com',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.sp,
                            fontFamily: 'SF Pro Rounded',
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Account',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.sp,
                      fontFamily: 'SF Pro Rounded',
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 170.h,
                    width: 325.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Getx.Notification);
                          },
                          child: const AccountWidget(
                            icon: Icons.notifications,
                            title: 'Notification',
                          ),
                        ),
                        SizedBox(height: 10.h),
                        const AccountWidget(
                          icon: Icons.lock_rounded,
                          title: 'Security',
                        ),
                        SizedBox(height: 10.h),
                        const AccountWidget(
                          icon: Icons.email_rounded,
                          title: 'Email preference ',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Course',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.sp,
                      fontFamily: 'SF Pro Rounded',
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 170.h,
                    width: 325.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        const AccountWidget(
                          icon: Icons.library_books_rounded,
                          title: 'Certificate',
                        ),
                        SizedBox(height: 10.h),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Getx.Payment);
                          },
                          child: const AccountWidget(
                            icon: Icons.payments,
                            title: 'Payment',
                          ),
                        ),
                        SizedBox(height: 10.h),
                        const AccountWidget(
                          icon: Icons.history,
                          title: 'History ',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Support',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.sp,
                      fontFamily: 'SF Pro Rounded',
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 110.h,
                    width: 325.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        const AccountWidget(
                          icon: Icons.star,
                          title: 'Help',
                        ),
                        SizedBox(height: 10.h),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Getx.FAQs);
                          },
                          child: const AccountWidget(
                            icon: Icons.info,
                            title: 'FAQ',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(Getx.Login);
                    },
                    child: Text(
                      'Sign out',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60.h),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
