import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../models/API/category_controller.dart';
import '../../models/API/models/category.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: FutureBuilder<List<MyCategory>>(
        future: CategoryController().getCategory(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            final List<MyCategory> categories = snapshot.data!;

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      for (int i = 0; i < 3; i++)
                        if (i < categories.length)
                          Padding(
                            padding: EdgeInsets.only(right: 10.w),
                            child: _buildCategoryWidget(
                                categories[i].image, categories[i].name),
                          ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    for (int i = 3; i < 5; i++)
                      if (i < categories.length)
                        Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: _buildCategoryWidget(
                              categories[i].image, categories[i].name),
                        ),
                  ],
                ),
              ],
            );
          } else {
            return Center(
              child: Text(
                'No Data',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26.sp,
                ),
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildCategoryWidget(String imageUrl, String title) {
    return Container(
      width: 130.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 18.w,
            height: 20.h,
            child: Center(
              child: Image(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 5.w),
          Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 14.sp,
                fontFamily: 'SF Pro Rounded',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
