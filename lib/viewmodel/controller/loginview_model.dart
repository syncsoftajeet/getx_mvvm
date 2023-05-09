import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/data/repository/login_repository/login_repository.dart';
import 'package:getx_mvvm/models/login/loginrespons_model.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/viewmodel/userprefrences/user_prefrences.dart';

class LoginViewModel extends GetxController{

  final _repository = LoginRepository();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusMode = FocusNode().obs;
  final passwordFocusMode = FocusNode().obs;

  final RxBool loading = false.obs;

  UserPrefrences userPrefrences = UserPrefrences();

  void loginApi(){
    loading.value = true;
    Map data = {
      'mobile' : emailController.value.text,
      'password' : passwordController.value.text
    };
    _repository.loginApi(data).then((value) {
      loading.value = false;

      Utils.snackBar("Success", "Login Success");
      print('res=> $value');

      userPrefrences.saveUser(LoginResponseModel.fromJson(value[0])).then((value){
        Get.toNamed(RoutesName.home_screen);
        Utils.toastMessage("Okk");
      }).onError((error, stackTrace) {
        Utils.toastMessage("${error.toString()}");
      });



    }).onError((error, stackTrace){
      loading.value = false;
      Utils.snackBar("Error", error.toString());
    });
  }

}