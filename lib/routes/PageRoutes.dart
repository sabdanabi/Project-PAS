import 'package:get/get.dart';
import '../Login&RegisterUI/Login/LoginPage/Login.dart';
import '../Login&RegisterUI/Register/RgisterPage/RegisterPage.dart';
import '../Payment/Paymentscreen/Payment_Method.dart';
import '../Profile/Profilepage.dart';
import '../screens/CartPage.dart';
import '../screens/Favorite.dart';
import '../screens/SplashScreen.dart';
import '../screens/LandingPage.dart';
import '../screens/onboarding/Onboarding.dart';
import '../screens/test.dart';
import '../widgets/BottomNav.dart';

List <GetPage> routes = [
  GetPage(name: '/splash', page: () => Splash()),
  GetPage(name: '/landingPage', page: () => LandingPage()),
  GetPage(name: '/login', page: () => LoginPage()),
  GetPage(name: '/register', page: () => RegisterPage()),
  GetPage(name: '/profil', page: () => Profile()),
  GetPage(name: '/onboarding', page: () => Onboarding()),
  GetPage(name: '/cartPage', page: () => CartPage()),
  GetPage(name: '/payment', page: () => Payment()),
  GetPage(name: '/bottomNav', page: () => BottomNavigation()),
  GetPage(name: '/favorite', page: () => FavoritePage()),
];