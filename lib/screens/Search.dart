import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/screens/S_result.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        toolbarHeight: 100.h,
        centerTitle: false,
        title: Column(
          children: [
            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Icon(
                          Icons.search,
                          color: Colors.black87,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Search for anything..',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 50.h),
                      Icon(Icons.mic, color: Colors.black),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Popular search',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18.sp,
                  fontFamily: 'SF Pro Rounded',
                ),
              ),
            ),
            SizedBox(height: 15.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 38.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      child: Text(
                        'Cooking',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.sp,
                          fontFamily: 'SF Pro Rounded',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    height: 38.h,
                    width: 85.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    child: Text(
                      'Python',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                        fontFamily: 'SF Pro Rounded',
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    height: 38.h,
                    width: 85.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    child: Text(
                      'Excel',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                        fontFamily: 'SF Pro Rounded',
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    height: 38.h,
                    width: 85.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    child: Text(
                      'Coding',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                        fontFamily: 'SF Pro Rounded',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 38.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      child: Text(
                        'Webflow',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.sp,
                          fontFamily: 'SF Pro Rounded',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => S_result()));                    },
                    child: Container(
                      height: 38.h,
                      width: 98.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      child: Text(
                        'UX Design',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.sp,
                          fontFamily: 'SF Pro Rounded',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Browse category',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18.sp,
                  fontFamily: 'SF Pro Rounded',
                ),
              ),
            ),
            SizedBox(height: 35.h),
            Row(
              children: [
                SizedBox(width: 10.w),
                IconButton(
                  icon: Icon(
                    Icons.broken_image_outlined,
                    color: Colors.pink,
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 15.w),
                Text(
                  'Art',
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
                        icon: Icon(Icons.chevron_right_outlined),
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
                  icon: Icon(
                    Icons.computer,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 15.w),
                Text(
                  'Coding',
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
                        icon: Icon(Icons.chevron_right_outlined),
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
                  icon: Icon(
                    Icons.design_services,
                    color: Colors.brown,
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 15.w),
                Text(
                  'Design',
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
                        icon: Icon(Icons.chevron_right_outlined),
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
                  icon: Icon(Icons.mobile_friendly),
                  onPressed: () {},
                ),
                SizedBox(width: 15.w),
                Text(
                  'Marketing',
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
                        icon: Icon(Icons.chevron_right_outlined),
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
                  icon: Icon(
                    Icons.style_outlined,
                    color: Colors.green,
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 15.w),
                Text(
                  'Lifestyle',
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
                        icon: Icon(Icons.chevron_right_outlined),
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
                  icon: Icon(
                    Icons.health_and_safety,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 15.w),
                Text(
                  'Health',
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
                        icon: Icon(Icons.chevron_right_outlined),
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
                  icon: Icon(
                    Icons.business_center,
                    color: Colors.brown,
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 15.w),
                Text(
                  'Business',
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
                        icon: Icon(Icons.chevron_right_outlined),
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
    );
  }
}
