import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountWidget extends StatefulWidget {
  final IconData icon;
  final String title;

  const AccountWidget({
    required this.icon,
    required this.title,
  });

  @override
  State<AccountWidget> createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10.w),
        IconButton(
          icon: Icon(
            widget.icon,
            size: 18,
          ),
          onPressed: () {},
        ),
        SizedBox(width: 15.w),
        Text(
          widget.title,
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
}
