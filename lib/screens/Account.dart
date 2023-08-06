import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/screens/Login.dart';
import 'package:secoola/screens/Not_BottomSheet.dart';
import 'package:secoola/screens/Payment.dart';
import 'package:secoola/screens/faqs.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool result = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: const Color(0xFFFAFAFA),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFAFAFA),
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      fontSize: 26.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              Container(
                child: Column(
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
                        SizedBox(width: 100.w),

                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: const Icon(
                                    Icons.edit),
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
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Not_BottomSheet()));
                              },
                              child: Row(
                                children: [
                                  SizedBox(width: 10.w),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.notifications,
                                      size: 18,
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(width: 15.w),
                                  Text(
                                    'Notifications',
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14.sp,
                                      fontFamily: 'SF Pro Rounded',
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          icon: const Icon(
                                              Icons.chevron_right_outlined),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                SizedBox(width: 10.w),
                                IconButton(
                                  icon: const Icon(
                                    Icons.lock_rounded,
                                    size: 18,
                                  ),
                                  onPressed: () {},
                                ),
                                SizedBox(width: 15.w),
                                Text(
                                  'Security',
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    fontFamily: 'SF Pro Rounded',
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: const Icon(
                                            Icons.chevron_right_outlined),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                SizedBox(width: 10.w),
                                IconButton(
                                  icon:
                                      const Icon(Icons.email_rounded, size: 18),
                                  onPressed: () {},
                                ),
                                SizedBox(width: 15.w),
                                Text(
                                  'Email preference',
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    fontFamily: 'SF Pro Rounded',
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: const Icon(
                                            Icons.chevron_right_outlined),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                            Row(
                              children: [
                                SizedBox(width: 10.w),
                                IconButton(
                                  icon: const Icon(Icons.library_books_rounded),
                                  onPressed: () {},
                                ),
                                SizedBox(width: 15.w),
                                Text(
                                  'Certificate',
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    fontFamily: 'SF Pro Rounded',
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: const Icon(
                                            Icons.chevron_right_outlined),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Payment()));
                              },
                              child: Row(
                                children: [
                                  SizedBox(width: 10.w),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.payments,
                                      size: 18,
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(width: 15.w),
                                  Text(
                                    'Payment',
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14.sp,
                                      fontFamily: 'SF Pro Rounded',
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          icon: const Icon(
                                              Icons.chevron_right_outlined),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                SizedBox(width: 10.w),
                                IconButton(
                                  icon: const Icon(
                                    Icons.history,
                                    size: 18,
                                  ),
                                  onPressed: () {},
                                ),
                                SizedBox(width: 15.w),
                                Text(
                                  'History',
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    fontFamily: 'SF Pro Rounded',
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: const Icon(
                                            Icons.chevron_right_outlined),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                            Row(
                              children: [
                                SizedBox(width: 10.w),
                                IconButton(
                                  icon: const Icon(
                                    Icons.star,
                                    size: 18,
                                  ),
                                  onPressed: () {},
                                ),
                                SizedBox(width: 15.w),
                                Text(
                                  'Help',
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    fontFamily: 'SF Pro Rounded',
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: const Icon(
                                            Icons.chevron_right_outlined),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const FAQs()));
                              },
                              child: Row(
                                children: [
                                  SizedBox(width: 10.w),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.info,
                                      size: 18,
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(width: 15.w),
                                  Text(
                                    'FAQ',
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14.sp,
                                      fontFamily: 'SF Pro Rounded',
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          icon: const Icon(
                                              Icons.chevron_right_outlined),
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
                    SizedBox(height: 40.h),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
