import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/Cart_f.dart';
import '../screens/Not_BottomSheet.dart';

class icon_widget extends StatefulWidget {
  const icon_widget({super.key});

  @override
  State<icon_widget> createState() => _icon_widgetState();
}

class _icon_widgetState extends State<icon_widget> {
  void _bottom(BuildContext cont) {
    showModalBottomSheet(
      constraints: BoxConstraints(maxHeight: 800.h),
      isScrollControlled: true,
      context: cont,
      elevation: 10,
      backgroundColor: Colors.transparent,
      builder: (cont) => Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          color: Colors.white,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 650.h,
                    child: const Cart_f(),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -70,
              right: 25,
              child: Container(
                height: 52.h,
                width: 52.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(cont);
                  },
                  icon: const Icon(Icons.close, size: 28, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _bottom_N(BuildContext cont) {
    showModalBottomSheet(
      constraints: BoxConstraints(maxHeight: 800.h),
      isScrollControlled: true,
      context: cont,
      elevation: 10,
      backgroundColor: Colors.transparent,
      builder: (cont) => Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          color: Colors.white,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 650.h,
                    child: const Not_BottomSheet(),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -70,
              right: 25,
              child: Container(
                height: 52.h,
                width: 52.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(cont);
                  },
                  icon: const Icon(Icons.close, size: 28, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40.h,
          width: 38.w,
          decoration: BoxDecoration(
            color: const Color(0xFFB2B2B2),
            borderRadius: BorderRadius.circular(15),
          ),
          child: IconButton(
            onPressed: () {
              _bottom(context);
            },
            icon: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            color: const Color(0xFFB2B2B2),
            borderRadius: BorderRadius.circular(15),
          ),
          child: IconButton(
            onPressed: () {
              _bottom_N(context);
            },
            icon: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
