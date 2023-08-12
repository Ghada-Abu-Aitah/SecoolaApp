import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:secoola/models/faq.dart';

class FAQs extends StatefulWidget {
  const FAQs({super.key});

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  final List<Faq> _faqs = <Faq>[
    Faq(
        question: 'What is Secoola ?',
        answer:
            'Secoola is an online learning platform that offers a wide range of courses for programmers, designers, and anyone interest.'),
    Faq(
        question: 'Are the courses free ?',
        answer:
            'Secoola offers both free and paid courses. You can browse our course catalog to see which ones are free and which ones require a purchase.'),
    Faq(
        question: 'How do I enroll in a course ?',
        answer:
            'To enroll in a course, navigate to the course page and click on the "Enroll" button. If it\'s a paid course you will be prompted to complete the payment process.'),
    Faq(
        question: 'How long do I have access to a course after enrolling ?',
        answer:
            'Once enrolled, you have lifetime access to the course materials, allowing you to learn at your own pace.'),
    Faq(
        question: 'Is my payment information secure ?',
        answer:
            'Yes, we take security seriously. Our payment processing is handled by trusted third-party services, ensuring the safety of your payment information.'),
    Faq(
        question: 'Can I suggest a new question for the FAQs ?',
        answer:
            'Absolutely! If you have a question that\'s not covered in the FAQs, feel free to contact our support team.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        toolbarHeight: 50.h,
        backgroundColor: const Color(0xFF00A9B7),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        centerTitle: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    InkWell(
                        child: const Icon(Icons.arrow_back_ios),
                        onTap: () {
                          Get.back();
                        }),
                    SizedBox(width: 130.w),
                    Text(
                      ' FAQ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          fontSize: 20.sp),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          ExpansionPanelList(
            animationDuration: const Duration(milliseconds: 500),
            elevation: 0,
            expandedHeaderPadding: EdgeInsets.zero,
            dividerColor: Colors.grey.shade200,
            expansionCallback: (panelIndex, isExpanded) {
              setState(() => _faqs[panelIndex].isExpanded = !isExpanded);
            },
            children: _faqs.map((Faq faq) {
              return ExpansionPanel(
                  backgroundColor: Colors.white,
                  canTapOnHeader: true,
                  isExpanded: faq.isExpanded,
                  headerBuilder: (context, isExpanded) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 25),
                      child: Text(
                        faq.question,
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    );
                  },
                  body: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        faq.answer,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ));
            }).toList(),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
