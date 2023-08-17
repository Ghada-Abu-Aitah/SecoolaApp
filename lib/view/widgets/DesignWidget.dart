import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/models/API/lecture_controller.dart';
import 'package:secoola/models/API/models/lecture.dart';

class DesignWidget extends StatefulWidget {
  const DesignWidget({super.key});

  @override
  State<DesignWidget> createState() => _DesignWidgetState();
}

class _DesignWidgetState extends State<DesignWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: FutureBuilder<List<Lecture>>(
        future: LectureController().getLecture(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            final lecture = snapshot.data![0];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lecture.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 20.sp,
                    fontFamily: 'SF Pro Rounded',
                  ),
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.person,
                      color: Color(0xFF00A9B7),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'Halo Academy',
                      style: TextStyle(
                        color: const Color(0xFF00A9B7),
                        fontWeight: FontWeight.normal,
                        fontSize: 16.sp,
                        fontFamily: 'SF Pro Rounded',
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 15.w),
                    Text(
                      '4.8',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16.sp,
                        fontFamily: 'SF Pro Rounded',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                Text(
                  lecture.description,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 14.sp,
                    fontFamily: 'SF Pro Rounded',
                    height: 1.3.h,
                  ),
                ),
                SizedBox(height: 25.h),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Students',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.sp,
                            fontFamily: 'SF Pro Rounded',
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          '143.247',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 16.sp,
                            fontFamily: 'SF Pro Rounded',
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'Last update',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.sp,
                            fontFamily: 'SF Pro Rounded',
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          'Feb 2, 2021',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 16.sp,
                            fontFamily: 'SF Pro Rounded',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 70.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Language',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.sp,
                            fontFamily: 'SF Pro Rounded',
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          'English',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 16.sp,
                            fontFamily: 'SF Pro Rounded',
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'Subtitle',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.sp,
                            fontFamily: 'SF Pro Rounded',
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          children: [
                            Text(
                              'English and',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 16.sp,
                                fontFamily: 'SF Pro Rounded',
                              ),
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              '5 more',
                              style: TextStyle(
                                color: const Color(0xFF00A9B7),
                                fontWeight: FontWeight.normal,
                                fontSize: 16.sp,
                                fontFamily: 'SF Pro Rounded',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          } else {
            return const Center(
              child: Text(
                'No Data',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
