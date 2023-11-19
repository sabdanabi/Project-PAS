import 'package:get/get.dart';
import '../Login&RegisterUI/Login/LoginPage/Login.dart';
import '../Login&RegisterUI/Register/RgisterPage/RegisterPage.dart';
import '../Profile/Profilepage.dart';
import '../screens/SplashScreen.dart';
import '../screens/LandingPage.dart';
import '../screens/onboarding/Onboarding.dart';

List <GetPage> routes = [
  GetPage(name: '/splash', page: () => Splash()),
  GetPage(name: '/landingPage', page: () => LandingPage()),
  GetPage(name: '/login', page: () => LoginPage()),
  GetPage(name: '/register', page: () => RegisterPage()),
  GetPage(name: '/profil', page: () => Profile()),
  GetPage(name: '/onboarding', page: () => Onboarding()),
];