import 'package:flutter/material.dart';
import 'package:secoola/screens/Search.dart';
import 'package:secoola/widgets/CoursesWidget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class S_result extends StatefulWidget {
  const S_result({super.key});

  @override
  State<S_result> createState() => _S_resultState();
}

class _S_resultState extends State<S_result> {
  bool result = true;

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
                            hintText: 'UX Design',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 50.h),
                      IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Search()));
                          },
                          icon: Icon(Icons.cancel, color: Colors.grey)),
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
            SizedBox(height: 40.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Showing search result for "UX Design"',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.sp,
                  fontFamily: 'SF Pro Rounded',
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  SizedBox(height: 60.h),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: Colors.blue, width: 0.5.w),
                      ),
                      minimumSize: Size(158.w, 48.h),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.compare_arrows,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'Filter',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20.w),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: Colors.blue, width: 0.5.w),
                      ),
                      minimumSize: Size(158.w, 48.h),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.south_outlined,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'Sort',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: CoursesWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
