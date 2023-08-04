import 'package:flutter/material.dart';
import 'package:secoola/screens/Onbo1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Secoola extends StatefulWidget {
  const Secoola({Key? key}) : super(key: key);

  @override
  State<Secoola> createState() => _SecoolaState();
}

class _SecoolaState extends State<Secoola> {
  void initState() {
    super.initState();
    _navigatetohome(context);
  }

  _navigatetohome(BuildContext context) async {
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Onbo1()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {
              _navigatetohome(context);
            },
            child: Image.asset(
              'assets/images/1.png',
              width: 200.w,
              height: 200.h,
            ),
          ),
        ),
      ),
    );
  }
}
