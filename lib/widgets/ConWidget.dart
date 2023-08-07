import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConWidget extends StatefulWidget {
  const ConWidget({super.key});

  @override
  State<ConWidget> createState() => _ConWidgetState();
}

class _ConWidgetState extends State<ConWidget> {
  List<String> items = [
    "Curriculum",
    "Review",
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 46.h,
            width: 335.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFFF4F4F4),
            ),
            child: Row(
              children: [
                for (int index = 0; index < items.length; index++)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        current = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 38.h,
                      width: 158.w,
                      decoration: BoxDecoration(
                        color: current == index
                            ? const Color(0xFF00A9B7)
                            : Colors.grey.shade100,
                        borderRadius: current == index
                            ? BorderRadius.circular(15)
                            : BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          items[index],
                          style: TextStyle(
                            color:
                                current == index ? Colors.white : Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'SF Pro Rounded',
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          if (current == 0) ...[] else ...[],
        ],
      ),
    );
  }
}
