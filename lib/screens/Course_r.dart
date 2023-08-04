// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:secoola/screens/Bottom_Navigation.dart';
// import 'package:secoola/screens/Cart_e.dart';
// import 'package:secoola/screens/Home.dart';
// import 'package:secoola/screens/Payment.dart';
// import 'package:secoola/screens/Wishlist.dart';
// import 'package:secoola/widgets/TabWidget.dart';
//
// class Course_r extends StatefulWidget {
//   const Course_r({super.key});
//
//   @override
//   State<Course_r> createState() => _Course_rState();
// }
//
// class _Course_rState extends State<Course_r> {
//   bool result = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             height: 20.h,
//             width: 20.w,
//             decoration: BoxDecoration(
//               color: Colors.grey.shade400,
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: IconButton(
//               icon: const Icon(
//                 Icons.arrow_back,
//                 size: 22,
//                 color: Colors.white,
//               ),
//               onPressed: () {
//                 Navigator.pushReplacement(context,
//                     MaterialPageRoute(builder: (context) => Bottom_Navigation()));
//               },
//             ),
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//             child: Container(
//               height: 7.h,
//               width: 38.w,
//               decoration: BoxDecoration(
//                 color: Colors.grey.shade400,
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Center(
//                 child: IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.shopping_cart_rounded,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               width: 375.w,
//               height: 330.h,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: Colors.yellow.shade100),
//             ),
//             SingleChildScrollView(
//               child: Container(
//                 height: 400.h,
//                 width: 410.w,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: SingleChildScrollView(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         SizedBox(height: 20.h),
//                         Text(
//                           'Design Thinking Fundamental',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.normal,
//                             fontSize: 20.sp,
//                             fontFamily: 'SF Pro Rounded',
//                           ),
//                         ),
//                         SizedBox(height: 15.h),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Icon(
//                               Icons.person,
//                               color: Color(0xFF00A9B7),
//                             ),
//                             SizedBox(width: 10.w),
//                             Text(
//                               'Halo Academy',
//                               style: TextStyle(
//                                 color: Color(0xFF00A9B7),
//                                 fontWeight: FontWeight.normal,
//                                 fontSize: 16.sp,
//                                 fontFamily: 'SF Pro Rounded',
//                               ),
//                             ),
//                             SizedBox(width: 50.w),
//                             Icon(
//                               Icons.star,
//                               color: Colors.yellow,
//                             ),
//                             SizedBox(width: 15.w),
//                             Text(
//                               '4.8',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.normal,
//                                 fontSize: 16.sp,
//                                 fontFamily: 'SF Pro Rounded',
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 25.h),
//                         Text(
//                           'Design thinking is a non-linear, iterative process that\nteamsuse to understand users,redefine problems and create innovative solutions to prototype.',
//                           style: TextStyle(
//                             color: Colors.grey,
//                             fontWeight: FontWeight.normal,
//                             fontSize: 14.sp,
//                             fontFamily: 'SF Pro Rounded',
//                             height: 1.3.h,
//                           ),
//                         ),
//                         SizedBox(height: 25.h),
//                         Row(
//                           children: [
//                             Column(
//                               children: [
//                                 Text(
//                                   'Students',
//                                   style: TextStyle(
//                                     color: Colors.grey,
//                                     fontWeight: FontWeight.normal,
//                                     fontSize: 14.sp,
//                                     fontFamily: 'SF Pro Rounded',
//                                   ),
//                                 ),
//                                 SizedBox(height: 5.h),
//                                 Text(
//                                   '143.247',
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.normal,
//                                     fontSize: 16.sp,
//                                     fontFamily: 'SF Pro Rounded',
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(width: 140.w),
//                             Column(
//                               children: [
//                                 Text(
//                                   'Language',
//                                   style: TextStyle(
//                                     color: Colors.grey,
//                                     fontWeight: FontWeight.normal,
//                                     fontSize: 14.sp,
//                                     fontFamily: 'SF Pro Rounded',
//                                   ),
//                                 ),
//                                 SizedBox(height: 5.h),
//                                 Text(
//                                   'English',
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.normal,
//                                     fontSize: 16.sp,
//                                     fontFamily: 'SF Pro Rounded',
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 25.h),
//                         Row(
//                           children: [
//                             Column(
//                               children: [
//                                 Text(
//                                   'Last update',
//                                   style: TextStyle(
//                                     color: Colors.grey,
//                                     fontWeight: FontWeight.normal,
//                                     fontSize: 14.sp,
//                                     fontFamily: 'SF Pro Rounded',
//                                   ),
//                                 ),
//                                 SizedBox(height: 5.h),
//                                 Text(
//                                   'Feb 2,2021',
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.normal,
//                                     fontSize: 16.sp,
//                                     fontFamily: 'SF Pro Rounded',
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(width: 82.w),
//                             Column(
//                               children: [
//                                 Text(
//                                   'Subtitle',
//                                   style: TextStyle(
//                                     color: Colors.grey,
//                                     fontWeight: FontWeight.normal,
//                                     fontSize: 14.sp,
//                                     fontFamily: 'SF Pro Rounded',
//                                   ),
//                                 ),
//                                 SizedBox(height: 5.h),
//                                 Row(
//                                   children: [
//                                     Text(
//                                       'English and',
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.normal,
//                                         fontSize: 16.sp,
//                                         fontFamily: 'SF Pro Rounded',
//                                       ),
//                                     ),
//                                     SizedBox(width: 4.w),
//                                     Text(
//                                       '5 more',
//                                       style: TextStyle(
//                                         color: Colors.blue,
//                                         fontWeight: FontWeight.normal,
//                                         fontSize: 16.sp,
//                                         fontFamily: 'SF Pro Rounded',
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 40.h),
//                      //   ButtonWidget(),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20.h),
//
//             Column(
//               children: [
//                 Text(
//                   'Student reviews',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//                 SizedBox(height: 16.h),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 100),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.star, color: Colors.yellow),
//                       Icon(Icons.star, color: Colors.yellow),
//                       Icon(Icons.star, color: Colors.yellow),
//                       Icon(Icons.star, color: Colors.yellow),
//                       Icon(Icons.star, color: Colors.yellow),
//                       SizedBox(width: 8.w),
//                       Text(
//                         '4.8 out of 5',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 12.sp,
//                           fontWeight: FontWeight.normal,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 30.h),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 30),
//               child: Row(
//                 children: [
//                   Text(
//                     'Sort by',
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 12.sp,
//                       fontWeight: FontWeight.normal,
//                     ),
//                   ),
//                   SizedBox(width: 5.w),
//                   Icon(Icons.arrow_drop_down_sharp),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20.h),
//             Column(
//               children: [
//                 Row(
//                   children: [
//                     Container(
//                       child: SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: [
//                                 SizedBox(width: 40.w),
//                                 Container(
//                                   width: 36.w,
//                                   height: 36.h,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       color: Colors.yellow.shade300),
//                                 ),
//                                 SizedBox(width: 20.w),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     SizedBox(width: 30.w),
//                                     Text(
//                                       'Reveiwer Username',
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.normal,
//                                         fontSize: 14.sp,
//                                         fontFamily: 'SF Pro Rounded',
//                                       ),
//                                     ),
//                                     SizedBox(height: 10.h),
//                                     Text(
//                                       '1 day ago',
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.normal,
//                                         fontSize: 12.sp,
//                                         fontFamily: 'SF Pro Rounded',
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(width: 80.w),
//                                 Icon(Icons.star, color: Colors.yellow),
//                                 SizedBox(width: 5.w),
//                                 Text(
//                                   '4.8',
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.normal,
//                                     fontSize: 16.sp,
//                                     fontFamily: 'SF Pro Rounded',
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 10.h),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 30),
//                   child: Text(
//                     'Description this is a simple description that explain the description about the class ',
//                     style: TextStyle(
//                       color: Colors.grey,
//                       fontWeight: FontWeight.normal,
//                       fontSize: 14.sp,
//                       height: 1.5.h,
//                       fontFamily: 'SF Pro Rounded',
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//
//
//
//
//
//
//
//
//
//
//
//             SizedBox(height: 35.h),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.shade200.withOpacity(0.50),
//                     spreadRadius: 15,
//                     blurRadius: 5,
//                     offset: Offset(0, 10),
//                   ),
//                 ],
//               ),
//               child: SizedBox(
//                 height: 242,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   child: Column(
//                     children: [
//                       SizedBox(height: 10.h),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             'Price',
//                             style: TextStyle(
//                               color: Colors.grey,
//                               fontWeight: FontWeight.normal,
//                               fontSize: 16.sp,
//                               fontFamily: 'SF Pro Rounded',
//                             ),
//                           ),
//                           SizedBox(width: 100.w),
//                           Text(
//                             '\$150',
//                             style: TextStyle(
//                               color: Colors.blue,
//                               fontWeight: FontWeight.normal,
//                               fontSize: 24.sp,
//                               fontFamily: 'SF Pro Rounded',
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 40.h),
//                       ElevatedButton(
//                         onPressed: () {
//                           Navigator.pushReplacement(context,
//                               MaterialPageRoute(builder: (context) => Payment()));
//                         },
//                         style: ElevatedButton.styleFrom(
//                           primary: Color(0xFF00A9B7),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           minimumSize: Size(335.w, 52.h),
//                         ),
//                         child: Text(
//                           'Enroll course now',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16.sp,
//                             fontWeight: FontWeight.normal,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 20.h),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             ElevatedButton(
//                               onPressed: () {
//                                 Navigator.pushReplacement(context,
//                                     MaterialPageRoute(builder: (context) => Cart_e()));
//                               },
//                               style: ElevatedButton.styleFrom(
//                                 primary: Colors.white,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(20),
//                                   side:
//                                       BorderSide(color: Colors.blue, width: 1.w),
//                                 ),
//                                 minimumSize: Size(158.w, 52.h),
//                               ),
//                               child: Text(
//                                 'Add to cart',
//                                 style: TextStyle(
//                                   color: Colors.blue,
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.normal,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: 5.w),
//                             ElevatedButton(
//                               onPressed: () {
//                                 Navigator.pushReplacement(context,
//                                     MaterialPageRoute(builder: (context) => Bottom_Navigation()));
//                               },
//                               style: ElevatedButton.styleFrom(
//                                 primary: Colors.white,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(20),
//                                   side:
//                                       BorderSide(color: Colors.blue, width: 1.w),
//                                 ),
//                                 minimumSize: Size(158.w, 52.h),
//                               ),
//                               child: Text(
//                                 'Add to wishlist',
//                                 style: TextStyle(
//                                   color: Colors.blue,
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.normal,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(height: 20.h),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
