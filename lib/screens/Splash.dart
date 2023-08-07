import 'package:flutter/material.dart';
import 'package:secoola/screens/Onbo1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome(context);
  }

  _navigatetohome(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 2000));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Onbo1()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
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
