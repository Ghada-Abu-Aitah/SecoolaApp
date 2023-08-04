import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/screens/Bottom_Navigation.dart';
import 'package:secoola/screens/Cart_f.dart';
import 'package:secoola/screens/Continue_c.dart';
import 'package:secoola/screens/Course_c.dart';
import 'package:secoola/screens/Home.dart';
import 'package:secoola/screens/Secoola.dart';
import 'package:secoola/screens/Topic.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
    minTextAdapt : true,
    splitScreenMode:true,
    builder:(context,child)  => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Secoola(),

        ),

    );
  }
}