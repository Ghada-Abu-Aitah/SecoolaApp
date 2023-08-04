import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/models/CurrTap.dart';
import 'package:secoola/models/RevTab.dart';
import 'package:secoola/screens/Course_c.dart';
import 'package:secoola/screens/Course_r.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFFF4F4F4),
            ),
            height: 46.h,
            width: 305.w,
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: _tabController.index == 0
                    ? Color(0xFF00A9B7)
                    : Colors.grey.shade100,
              ),
              tabs: [
                GestureDetector(
                  onTap: () {
                    _tabController.animateTo(0);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => CurrTap()),
                    );
                  },
                  child: Container(
                    width: 200.w,
                    height: 38.h,
                    child: Center(
                      child: Text(
                        'Curriculum',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _tabController.animateTo(1);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => RevTab()));
                  },
                  child: Container(
                    width: 158.w,
                    height: 38.h,
                    child: Center(
                      child: Text(
                        'Review',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                CurrTap(),
                RevTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
