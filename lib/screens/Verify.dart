import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/screens/Reset.dart';
import 'package:secoola/screens/Set_pass.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  bool result = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Verify',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
          ),
        ),
        backgroundColor:Color(0xFFFAFAFA),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 22,
            color: Colors.black,
          ),
          onPressed: () {
            if (result ?? true) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Reset()));            }
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 90.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    'Recovery code',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 24.sp,
                      fontFamily: 'SF Pro Rounded',
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Icon(
                      Icons.mobile_friendly,
                      color: Colors.blue),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric( horizontal: 20),
              child: Text(
                'Check your inbox, we have send the Varification code to your email.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ),
             SizedBox(height: 40.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Container(

                    width: 69.w,
                    height: 52.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blue),
                    ),
                    child: TextField(
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    width: 69.w,
                    height: 52.h,
                    decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blue),
                    ),
                    child: TextField(
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    width: 69.w,
                    height: 52.h,
                    decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blue),
                    ),
                    child: TextField(
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    width: 69.w,
                    height: 52.h,
                    decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blue),
                    ),
                    child: TextField(
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                      ),
                      obscureText: true,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (result ?? true) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Set_pass()));                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF00A9B7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: Size(335.w, 52.h),
                    ),
                    child: Text(
                      'Verify',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  SizedBox(height: 60.h),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        SizedBox(width: 30.w,),
                        Text(

                          'Not retrieve any code? ',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Resend code',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.blue,
                          ),
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
    );
  }
}
