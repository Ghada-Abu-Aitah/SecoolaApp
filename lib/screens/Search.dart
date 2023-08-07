import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/screens/Bottom_Navigation.dart';
import 'package:secoola/screens/S_result.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();

  final List<String> texts = ['Cooking', 'Python', 'Excel', 'Coding'];

  Widget CategoryRow({
    required IconData icon,
    required String text,
    required Color iconColor,
  }) {
    return Row(
      children: [
        SizedBox(width: 10.w),
        IconButton(
          icon: Icon(
            icon,
            color: iconColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: 15.w),
        Text(
          text,
          style: TextStyle(
            color: Colors.grey.shade800,
            fontWeight: FontWeight.normal,
            fontSize: 14.sp,
            fontFamily: 'SF Pro Rounded',
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.chevron_right_outlined),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 22,
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
        toolbarHeight: 80.h,
        title: Column(
          children: [
            SizedBox(height: 5.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.black87,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _searchController,
                          style: const TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            hintText: 'Search for anything..',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 50.h),
                      const Icon(Icons.mic, color: Colors.black),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Popular search',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18.sp,
                  fontFamily: 'SF Pro Rounded',
                ),
              ),
            ),
            SizedBox(height: 15.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: texts
                    .map(
                      (text) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 38.h,
                          width: 85.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.center,
                          child: Text(
                            text,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 14.sp,
                              fontFamily: 'SF Pro Rounded',
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 38.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      child: Text(
                        'Webflow',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.sp,
                          fontFamily: 'SF Pro Rounded',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const S_result()));
                    },
                    child: Container(
                      height: 38.h,
                      width: 98.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      child: Text(
                        'UX Design',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.sp,
                          fontFamily: 'SF Pro Rounded',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Browse category',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18.sp,
                  fontFamily: 'SF Pro Rounded',
                ),
              ),
            ),
            SizedBox(height: 35.h),
            CategoryRow(
              icon: Icons.broken_image_outlined,
              text: 'Art',
              iconColor: Colors.pink,
            ),
            SizedBox(height: 10.h),
            CategoryRow(
              icon: Icons.computer,
              text: 'Coding',
              iconColor: Colors.blue,
            ),
            SizedBox(height: 10.h),
            CategoryRow(
              icon: Icons.design_services,
              text: 'Design',
              iconColor: Colors.brown,
            ),
            SizedBox(height: 10.h),
            CategoryRow(
              icon: Icons.mobile_friendly,
              text: 'Marketing',
              iconColor: Colors.brown,
            ),
            SizedBox(height: 10.h),
            CategoryRow(
              icon: Icons.style_outlined,
              text: 'Lifestyle',
              iconColor: Colors.green,
            ),
            SizedBox(height: 10.h),
            CategoryRow(
              icon: Icons.health_and_safety,
              text: 'Health',
              iconColor: Colors.blue,
            ),
            SizedBox(height: 10.h),
            CategoryRow(
              icon: Icons.business_center,
              text: 'Business',
              iconColor: Colors.brown,
            ),
          ],
        ),
      ),
    );
  }
}
