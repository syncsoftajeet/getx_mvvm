
import 'dart:async';
import 'package:get/utils.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/viewmodel/userprefrences/user_prefrences.dart';

class SplashServices{


  UserPrefrences userPrefrences = UserPrefrences();

  void isLogin(){

    Utils.toastMessage(userPrefrences.getUser().toString());

    userPrefrences.getUser().then((value) => {

      if(value.toString().isNotEmpty && value.toString()!=null){
        Timer(const Duration(seconds: 3),()=>Get.toNamed(RoutesName.home_screen))
      }else
        Timer(const Duration(seconds: 3),()=>Get.toNamed(RoutesName.login_screen))


    });


  }
}