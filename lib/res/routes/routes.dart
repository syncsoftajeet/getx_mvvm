import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/view/home/home_screen.dart';
import 'package:getx_mvvm/view/login/login_screen.dart';
import 'package:getx_mvvm/view/splash_screen.dart';

class AppRoutes {

  static appRoutes() => [
    GetPage(name: RoutesName.splash_screen, page: () => SplashScreen(),
    transitionDuration: Duration(microseconds: 600),
    transition: Transition.rightToLeft
    ),
    GetPage(name: RoutesName.login_screen, page: () => LoginScreen(),
        transitionDuration: Duration(microseconds: 600),
        transition: Transition.rightToLeft
    ),
    GetPage(name: RoutesName.home_screen, page: () => HomeScreen(),
    transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 600)
    )
  ];

}