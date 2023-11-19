import 'package:get/get.dart';
import '../Login&RegisterUI/Login/LoginPage/Login.dart';
import '../screens/SplashScreen.dart';
import '../screens/LandingPage.dart';


List <GetPage> routes = [
  GetPage(name: '/splash', page: () => Splash()),
  GetPage(name: '/landingPage', page: () => LandingPage()),
  GetPage(name: '/login', page: () => LoginPage()),
];