import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoEntryWidget extends StatelessWidget {
  final String title;
  final String duration;

  const VideoEntryWidget({
    required this.title,
    required this.duration,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 335.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    duration,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Icon(
              Icons.slow_motion_video_outlined,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

class CurrTap extends StatelessWidget {
  const CurrTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const VideoEntryWidget(
            title: 'Introduction',
            duration: '00.53 mins',
          ),
          SizedBox(height: 20.h),
          const VideoEntryWidget(
            title: 'Design Thinking in Product',
            duration: '05.25 mins',
          ),
          SizedBox(height: 20.h),
          const VideoEntryWidget(
            title: 'Improving Design Method',
            duration: '05.36 mins',
          ),
        ],
      ),
    );
  }
}
