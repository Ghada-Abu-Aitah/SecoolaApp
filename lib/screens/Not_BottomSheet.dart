import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/screens/Bottom_Navigation.dart';
import 'package:secoola/widgets/CustomNotificationWidget.dart';

class Not_BottomSheet extends StatefulWidget {
  const Not_BottomSheet({super.key});

  @override
  State<Not_BottomSheet> createState() => _Not_BottomSheetState();
}

class _Not_BottomSheetState extends State<Not_BottomSheet> {
  bool result = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const Bottom_Navigation()));
          },
        ),
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                const Icon(
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
            const CustomNotificationWidget(
              icon: Icons.circle,
              title: 'Your payment is success',
              subtitle: 'Start Your course now',
            ),
            SizedBox(height: 10.h),
            const CustomNotificationWidget(
              icon: Icons.notifications,
              title: 'Daily reminder',
              subtitle: 'Continue you recent course',
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
      ),
    );
  }
}
