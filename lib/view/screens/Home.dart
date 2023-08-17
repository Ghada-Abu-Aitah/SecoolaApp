import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/CategoryWidget.dart';
import '../widgets/H_coursesWidget.dart';
import '../widgets/TopicWidget.dart';
import '../widgets/tWidget.dart';
import '../widgets/topWidget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            const tWidget(
              title: 'Popular course',
              subtitle: 'See all',
            ),
            SizedBox(height: 20.h),
            H_coursesWidget(),
            SizedBox(height: 30.h),
            Column(
              children: [
                const tWidget(
                  title: 'Categories',
                  subtitle: 'See all',
                ),
                SizedBox(height: 25.h),
                const CategoryWidget(),
              ],
            ),
            SizedBox(height: 50.h),
            const topWidget(
              title: 'Your Topic',
              title2: 'Design',
              subtitle: 'See all',
            ),
            SizedBox(height: 20.h),
            TopicWidget(),
            SizedBox(height: 40.h),
            const topWidget(
              title: 'Your Topic',
              title2: 'Coding',
              subtitle: 'See all',
            ),
            SizedBox(height: 20.h),
            TopicWidget(),
            SizedBox(height: 40.h),
            const topWidget(
              title: 'Your Topic',
              title2: 'Marketing',
              subtitle: 'See all',
            ),
            SizedBox(height: 20.h),
            TopicWidget(),
            SizedBox(height: 60.h),
          ],
        ),
      ),
    );
  }
}
