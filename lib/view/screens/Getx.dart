import 'package:get/get_navigation/src/routes/get_route.dart';
import 'Account.dart';
import 'Bottom_Navigation.dart';
import 'Cart_e.dart';
import 'Cart_f.dart';
import 'Completed.dart';
import 'Continue_c.dart';
import 'Course_c.dart';
import 'Home.dart';
import 'Login.dart';
import 'My_course.dart';
import 'Not_BottomSheet.dart';
import 'Onbo1.dart';
import 'Pay_Success.dart';
import 'Payment.dart';
import 'Reset.dart';
import 'S_result.dart';
import 'Search.dart';
import 'Set_pass.dart';
import 'Sign_up.dart';
import 'Topic.dart';
import 'Verify.dart';
import 'FAQs.dart';
import 'Wishlist.dart';
import 'Notification.dart';

import 'Splash.dart';

class Getx {
  static String Splash = '/Splash';
  static String Onbo1 = '/Onbo1';
  static String Sign_up = '/Sign_up';
  static String Login = '/Login';
  static String Reset = '/Reset';
  static String Verify = '/Verify';
  static String Set_pass = '/Set_pass';
  static String Topic = '/Topic';
  static String Home = '/Home';
  static String Search = '/Search';
  static String S_result = '/S_result';
  static String Account = '/Account';
  static String Bottom_Navigation = '/Bottom_Navigation';
  static String Cart_e = '/Cart_e';
  static String Cart_f = '/Cart_f';
  static String Completed = '/Completed';
  static String Continue_c = '/Continue_c';
  static String Course_c = '/Course_c';
  static String FAQs = '/FAQs';
  static String My_course = '/My_course';
  static String Not_BottomSheet = '/Not_BottomSheet';
  static String Pay_Success = '/Pay_Success';
  static String Payment = '/Payment';
  static String Wishlist = '/Wishlist';
  static String Notification = '/Notification';
}

final getPages = [
  GetPage(
    name: Getx.Splash,
    page: () => const Splash(),
  ),
  GetPage(
    name: Getx.Onbo1,
    page: () => const Onbo1(),
  ),
  GetPage(
    name: Getx.Sign_up,
    page: () => Sign_up(),
  ),
  GetPage(
    name: Getx.Login,
    page: () => const Login(),
  ),
  GetPage(
    name: Getx.Reset,
    page: () => const Reset(),
  ),
  GetPage(
    name: Getx.Verify,
    page: () => const Verify(),
  ),
  GetPage(
    name: Getx.Set_pass,
    page: () => const Set_pass(),
  ),
  GetPage(
    name: Getx.Topic,
    page: () => const Topic(),
  ),
  GetPage(
    name: Getx.Home,
    page: () => const Home(),
  ),
  GetPage(
    name: Getx.Search,
    page: () => const Search(),
  ),
  GetPage(
    name: Getx.S_result,
    page: () => const S_result(),
  ),
  GetPage(
    name: Getx.Account,
    page: () => const Account(),
  ),
  GetPage(
    name: Getx.Bottom_Navigation,
    page: () => const Bottom_Navigation(),
  ),
  GetPage(
    name: Getx.Cart_e,
    page: () => const Cart_e(),
  ),
  GetPage(
    name: Getx.Cart_f,
    page: () => const Cart_f(),
  ),
  GetPage(
    name: Getx.Completed,
    page: () => const Completed(),
  ),
  GetPage(
    name: Getx.Continue_c,
    page: () => const Continue_c(),
  ),
  GetPage(
    name: Getx.Course_c,
    page: () => const Course_c(),
  ),
  GetPage(
    name: Getx.FAQs,
    page: () => const FAQs(),
  ),
  GetPage(
    name: Getx.My_course,
    page: () => const My_course(),
  ),
  GetPage(
    name: Getx.Not_BottomSheet,
    page: () => const Not_BottomSheet(),
  ),
  GetPage(
    name: Getx.Pay_Success,
    page: () => const Pay_Success(),
  ),
  GetPage(
    name: Getx.Payment,
    page: () => const Payment(),
  ),
  GetPage(
    name: Getx.Wishlist,
    page: () => const Wishlist(),
  ),
  //Notification
  GetPage(
    name: Getx.Notification,
    page: () => const Notification(),
  ),
];
