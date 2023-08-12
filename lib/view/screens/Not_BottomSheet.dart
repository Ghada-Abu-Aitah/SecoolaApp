import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/CustomNotificationWidget.dart';

class Not_BottomSheet extends StatefulWidget {
  const Not_BottomSheet({super.key});

  @override
  State<Not_BottomSheet> createState() => _Not_BottomSheetState();
}

class _Not_BottomSheetState extends State<Not_BottomSheet> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
                SizedBox(width: 10.w),
                Text(
                  'Notification',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    fontSize: 24.sp,
                  ),
                ),
                SizedBox(width: 15.w),
                const Icon(
                  Icons.waving_hand_rounded,
                  color: Colors.orangeAccent,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
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
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: 20.h),
          const CustomNotificationWidget(
            icon: Icons.circle,
            title: 'Your payment is success',
            subtitle: 'Start Your course now',
          ),
          SizedBox(height: 10.h),
          const CustomNotificationWidget(
            icon: Icons.notifications,
            title: 'Daily reminder',
            subtitle: 'Continue your recent course',
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
          const CustomNotificationWidget(
            icon: Icons.cloud_download_sharp,
            title: 'Download your certificate',
            subtitle: 'Start Your course now',
          ),
          SizedBox(height: 10.h),
          const CustomNotificationWidget(
            icon: Icons.sunny,
            title: 'Summer sale!',
            subtitle: 'Get the best offer only for you',
          ),
        ],
      ),
    );
  }
}
