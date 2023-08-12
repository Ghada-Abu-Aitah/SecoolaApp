import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Getx.dart';

class Onbo1 extends StatefulWidget {
  const Onbo1({Key? key});

  @override
  State<Onbo1> createState() => _Onbo1State();
}

class BoItem {
  final String text;
  final String imageUrl;

  BoItem({
    required this.text,
    required this.imageUrl,
  });
}

class _Onbo1State extends State<Onbo1> {
  final PageController _pageController = PageController(viewportFraction: 1.0);
  bool result = true;

  List<BoItem> items = [
    BoItem(
      text: 'Join and study together',
      imageUrl:
          'https://trainghiemso.vn/wp-content/uploads/2022/03/Study-Together.png',
    ),
    BoItem(
      text: 'Find your mentors',
      imageUrl:
          'https://media.npr.org/assets/img/2019/10/25/mentorship-ask1_web-site-copy-1-_wide-ef7b4604d31a1ac0a5aa483ecef2b6fbf9ba0781.png',
    ),
    BoItem(
      text: 'Explore new knowledge',
      imageUrl:
          'https://img.freepik.com/free-vector/focused-people-studying-online-school_74855-5834.jpg',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10),
          child: Align(
            alignment: Alignment.center,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: items.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: Color(0xFF00A9B7),
                dotColor: Color(0xFF44DDEF),
                dotHeight: 4,
                dotWidth: 40,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                BoItem item = items[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20.h),
                    CachedNetworkImage(
                      imageUrl: item.imageUrl,
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      item.text,
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Column(
              children: [
                SizedBox(height: 20.h),
                Text(
                  'Find your best experience while studying and seeking knowledge here',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 30.h),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Getx.Sign_up);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF00A9B7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: Size(375.w, 48.h),
                  ),
                  child: Text(
                    'Let\'s Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Getx.Login);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                          color: const Color(0xFF00A9B7), width: 1.w),
                    ),
                    minimumSize: Size(375.w, 48.h),
                  ),
                  child: Text(
                    'I already have an account',
                    style: TextStyle(
                      color: const Color(0xFF00A9B7),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 80.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
