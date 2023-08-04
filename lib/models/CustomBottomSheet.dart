import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/screens/Bottom_Navigation.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  bool result = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),

      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 300.w,
                        height: 199.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow.shade300,
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Nothing here yet',
                                  style: TextStyle(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                IconButton(
                                  icon: const Icon(
                                    Icons.no_accounts,
                                    size: 24,
                                    color: Colors.red,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 21.h,
                            ),
                            Text(
                              'You haven\'t added anything to your cart yet,\nstart exploring your favorite courses!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 60.h),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Bottom_Navigation()));
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF00A9B7),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                minimumSize: Size(335.w, 52.h),
                              ),
                              child: Text(
                                'Explore course',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}