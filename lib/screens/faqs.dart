import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/models/faq.dart';
import 'package:secoola/screens/Bottom_Navigation.dart';

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
            'means the vehicle designated by Snap-on via the Operations Manual which is used as a mobile showroom and office and from where Products are sold.'),
    Faq(
        question: 'What is Secoola ?',
        answer:
            'means the vehicle designated by Snap-on via the Operations Manual which is used as a mobile showroom and office and from where Products are sold.'),
    Faq(
        question: 'What is Secoola ?',
        answer:
            'means the vehicle designated by Snap-on via the Operations Manual which is used as a mobile showroom and office and from where Products are sold.'),
    Faq(
        question: 'What is Secoola ?',
        answer:
            'means the vehicle designated by Snap-on via the Operations Manual which is used as a mobile showroom and office and from where Products are sold.'),
    Faq(
        question: 'What is Secoola ?',
        answer:
            'means the vehicle designated by Snap-on via the Operations Manual which is used as a mobile showroom and office and from where Products are sold.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Bottom_Navigation()));
                      },
                    ),
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
        ],
      ),
    );
  }
}
