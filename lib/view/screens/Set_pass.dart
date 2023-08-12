import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'Getx.dart';

class Set_pass extends StatefulWidget {
  const Set_pass({super.key});

  @override
  State<Set_pass> createState() => _Set_passState();
}

class _Set_passState extends State<Set_pass> {
  bool result = true;
  late TextEditingController _passwordTextController;
  bool _obscurePassword = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordTextController.dispose();
    super.dispose();
  }

  validator() {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      Get.toNamed(Getx.Login);
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Set password',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 22,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 90.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    'Set new password',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 24.sp,
                      fontFamily: 'SF Pro Rounded',
                    ),
                  ),
                  SizedBox(width: 20.w),
                  const Icon(Icons.lock_rounded, color: Colors.orange),
                ],
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Text(
                'Enter your email and a verification code to reset the\npassword will be sent to your email.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          controller: _passwordTextController,
                          obscureText: _obscurePassword,
                          decoration: InputDecoration(
                            labelText: "Your Password",
                            prefixIcon: const Icon(Icons.lock),
                            prefixIconColor: const Color(0xFF00A9B7),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 12.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xFF00A9B7),
                                width: 1.w,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                              child: Icon(
                                _obscurePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          validator: (String? value) {
                            if (value == null || value.trim().isEmpty) {
                              return "*Required";
                            }
                            if (value.trim().length < 6) {
                              return "password should not be less than 6 characters";
                            } else {
                              return null;
                            }
                          }),
                    ),
                    SizedBox(height: 35.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
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
                              primary: const Color(0xFF00A9B7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              minimumSize: Size(335.w, 52.h),
                            ),
                            child: Text(
                              'Set new password',
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
