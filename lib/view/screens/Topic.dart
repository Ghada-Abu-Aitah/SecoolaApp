import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'Getx.dart';

class Topic extends StatefulWidget {
  const Topic({Key? key}) : super(key: key);

  @override
  State<Topic> createState() => _TopicState();
}

class _TopicState extends State<Topic> {
  List<bool> isSelected = List.filled(9, false);

  Widget _buildItem(String imageUrl, String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected[index] = !isSelected[index];
        });
      },
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 60.w,
                height: 60.h,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(
                    color: isSelected[index]
                        ? const Color(0xFF00A9B7)
                        : Colors.transparent,
                    width: 3.w,
                  ),
                ),
                child: Image.network(
                  imageUrl,
                  width: 30.w,
                  height: 30.h,
                ),
              ),
              if (isSelected[index])
                Positioned(
                  top: -5.h,
                  right: -4.w,
                  child: Icon(
                    Icons.check_circle_rounded,
                    color: const Color(0xFF00A9B7),
                    size: 25.sp,
                  ),
                ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            text,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 110.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              child: Text(
                'Pick your favorite topic',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 24.sp,
                  fontFamily: 'SF Pro Rounded',
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: Text(
                'Choose your favorite topic to help us deliver\n the most suitable course for you',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 70.h),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildItem(
                        'https://cdn.icon-icons.com/icons2/1492/PNG/512/art-pallete_102830.png',
                        'Art',
                        0),
                    _buildItem(
                        'https://cdn-icons-png.flaticon.com/512/417/417084.png',
                        'Business',
                        1),
                    _buildItem(
                        'https://cdn-icons-png.flaticon.com/512/3449/3449347.png',
                        'Culinary',
                        2),
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildItem(
                        'https://cdn-icons-png.flaticon.com/512/4208/4208366.png',
                        'Coding',
                        3),
                    _buildItem(
                        'https://cdn-icons-png.flaticon.com/512/14/14033.png',
                        'Design',
                        4),
                    _buildItem(
                        'https://cdn-icons-png.flaticon.com/512/13/13973.png',
                        'Gaming',
                        5),
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildItem(
                        'https://cdn-icons-png.flaticon.com/512/3588/3588658.png',
                        'Lifestyle',
                        6),
                    _buildItem(
                        'https://cdn-icons-png.flaticon.com/512/4702/4702618.png',
                        'Music',
                        7),
                    _buildItem(
                        'https://images.freeimages.com/fic/images/icons/546/sport/256/football.png',
                        'Sport',
                        8),
                  ],
                ),
              ],
            ),
            SizedBox(height: 80.h),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Getx.Bottom_Navigation);
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF00A9B7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minimumSize: Size(335.w, 52.h),
              ),
              child: Text(
                'Start your journey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(height: 80.h),
            Text(
              'You can still change your topic again later ',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
