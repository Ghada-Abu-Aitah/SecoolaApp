import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/screens/Login.dart';
import 'package:secoola/screens/Verify.dart';

class Reset extends StatefulWidget {
  const Reset({super.key});

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  bool result = true;
  late TextEditingController _emailTextController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    super.dispose();
  }

  validator() {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      print('validated');
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Verify()));
    } else {
      print('Not Validated');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Reset password',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
          ),
        ),
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 22,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Login(),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 110.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    'Reset your password',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 24.sp,
                      fontFamily: 'SF Pro Rounded',
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Icon(Icons.lock_rounded, color: Colors.orange),
                ],
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Text(
                'Enter your email and a verification code to\n reset the password will be sent to your email.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 20.sp),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      height: 52.h,
                      width: 335.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        controller: _emailTextController,
                        decoration: InputDecoration(
                          labelText: "Your Email",
                          hintText: '',
                          prefixIcon: Icon(Icons.email_rounded),
                          prefixIconColor: Color(0xFF00A9B7),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 12.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF00A9B7),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        validator: (String? value) {
                          if (value == null || value.trim().length == 0) {
                            return "*Required";
                          }
                          if (!RegExp(
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                              .hasMatch(value)) {
                            return "Invalid Email Address";
                          } else
                            return null;
                        },
                      ),
                    ),
                    SizedBox(height: 35.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                validator();
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF00A9B7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              minimumSize: Size(335.w, 52.h),
                            ),
                            child: Text(
                              'Send verification code',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
