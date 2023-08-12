import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
//import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../widgets/ButtonWidget.dart';
import '../widgets/DesignWidget.dart';
import 'Getx.dart';

class Course_c extends StatefulWidget {
  const Course_c({super.key});

  @override
  State<Course_c> createState() => _Course_cState();
}

class _Course_cState extends State<Course_c> {
  //late YoutubePlayerController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 20.h,
            width: 20.w,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 22,
                color: Colors.white,
              ),
              onPressed: () {
                Get.toNamed(Getx.Bottom_Navigation);
              },
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              height: 7.h,
              width: 38.w,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: 375.w,
              height: 310.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.yellow.shade100,
              ),
              // child: YoutubePlayer(
              //   controller: _controller,
              //   showVideoProgressIndicator: true,
              //   onReady: () => debugPrint('Ready'),
              //   bottomActions: [
              //     CurrentPosition(),
              //     ProgressBar(
              //       isExpanded: true,
              //       colors: const ProgressBarColors(
              //         playedColor: Colors.amber,
              //         handleColor: Colors.amberAccent,
              //       ),
              //     ),
              //     const PlaybackSpeedButton(),
              //   ],
              // ),
            ),
            Container(
              height: 750.h,
              width: 410.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15.h),
                    const DesignWidget(),
                    SizedBox(height: 35.h),
                    const ButtonWidget()
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200.withOpacity(0.50),
                    spreadRadius: 15,
                    blurRadius: 1,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Price',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                              fontSize: 14.sp,
                              fontFamily: 'SF Pro Rounded',
                            ),
                          ),
                          Text(
                            '\$150',
                            style: TextStyle(
                              color: const Color(0xFF00A9B7),
                              fontWeight: FontWeight.normal,
                              fontSize: 24.sp,
                              fontFamily: 'SF Pro Rounded',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Getx.Payment);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF00A9B7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize: Size(335.w, 52.h),
                        ),
                        child: Text(
                          'Enroll course now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Get.toNamed(Getx.Course_c);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                      color: const Color(0xFF00A9B7),
                                      width: 1.w),
                                ),
                                minimumSize: Size(158.w, 52.h),
                              ),
                              child: Text(
                                'Add to cart',
                                style: TextStyle(
                                  color: const Color(0xFF00A9B7),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            SizedBox(width: 5.w),
                            ElevatedButton(
                              onPressed: () {
                                Get.toNamed(Getx.Course_c);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                      color: const Color(0xFF00A9B7),
                                      width: 1.w),
                                ),
                                minimumSize: Size(158.w, 52.h),
                              ),
                              child: Text(
                                'Add to wishlist',
                                style: TextStyle(
                                  color: const Color(0xFF00A9B7),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class YoutubePlayerView extends StatefulWidget {
//   const YoutubePlayerView({Key? key}) : super(key: key);
//
//   @override
//   State<YoutubePlayerView> createState() => _YoutubePlayerViewState();
// }

// class _YoutubePlayerViewState extends State<YoutubePlayerView> {
//   final videoURL = "https://www.youtube.com/watch?v=WT7wl8Wbgo8&list=PLEiEAq2VkUUIz01StTtLRDtXwNVwjj-Nc&index=5";
//   late YoutubePlayerController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = YoutubePlayerController(
//       initialVideoId: 'WT7wl8Wbgo8',
//       flags: const YoutubePlayerFlags(
//         autoPlay: false,
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     throw UnimplementedError();
//   }
// }
