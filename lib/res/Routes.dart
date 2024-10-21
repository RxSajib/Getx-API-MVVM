import 'package:get/get.dart';
import 'package:getx_mvvm/res/RouteName.dart';
import 'package:getx_mvvm/ui/SplashScreen.dart';

class AppRoutes{
  static final appRoutes = [
    GetPage(name: RoutesName.splashScreen, page: (){
      return const SplashScreen();
    }, transitionDuration: const Duration(microseconds: 300),
    transition: Transition.leftToRightWithFade)
  ];
}