import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'Getx.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Payment',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
          ),
        ),
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            height: 50.h,
            width: 50.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 24,
                color: Colors.black,
              ),
              onPressed: () {
                Get.back();
              },
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Items detail',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18.sp,
                  fontFamily: 'SF Pro Rounded',
                ),
              ),
            ),
            SizedBox(height: 20.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 100.h,
                      width: 335.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 15.w),
                          Container(
                            width: 68.w,
                            height: 68.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue.shade100),
                          ),
                          SizedBox(width: 20.w),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 30.w),
                                Text(
                                  'Design Thingking Fundamental',
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
                                      '\$24',
                                      style: TextStyle(
                                        color: Colors.blue,
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
                                          'Label',
                                          style: TextStyle(
                                            color: Colors.blue,
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
                  ),
                  SizedBox(height: 40.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Payment',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 18.sp,
                            fontFamily: 'SF Pro Rounded',
                          ),
                        ),
                        SizedBox(width: 180.w),
                        Text(
                          'Change',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.sp,
                            fontFamily: 'SF Pro Rounded',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 80.h,
                          width: 335.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 15),
                                      child: Container(
                                        width: 40.w,
                                        height: 40.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.yellow.shade100),
                                      ),
                                    ),
                                    SizedBox(width: 20.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 30.w),
                                        Text(
                                          'Master Card',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14.sp,
                                            fontFamily: 'SF Pro Rounded',
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        Text(
                                          '**** **** **** 8271',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.sp,
                                            fontFamily: 'SF Pro Rounded',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200.withOpacity(0.50),
              spreadRadius: 15,
              blurRadius: 5,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: SizedBox(
          height: 180.h,
          child: BottomAppBar(
            color: Colors.white,
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Voucher',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 16.sp,
                          fontFamily: 'SF Pro Rounded',
                        ),
                      ),
                      // Button widget
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue.shade50, //
                          onPrimary: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text('VEKTORABELAJAR   :'),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: Text(
                              'Total',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 16.sp,
                                fontFamily: 'SF Pro Rounded',
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$520',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 24.sp,
                                  fontFamily: 'SF Pro Rounded',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Getx.Pay_Success);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF00A9B7),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize: Size(157.w, 52.h),
                        ),
                        child: Text(
                          'Checkout',
                          style: TextStyle(
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
