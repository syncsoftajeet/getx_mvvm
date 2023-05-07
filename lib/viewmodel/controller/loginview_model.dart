import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/data/repository/login_repository/login_repository.dart';
import 'package:getx_mvvm/utils/utils.dart';

class LoginViewModel extends GetxController{

  final _repository = LoginRepository();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusMode = FocusNode().obs;
  final passwordFocusMode = FocusNode().obs;

  final RxBool loading = false.obs;

  void loginApi(){
    loading.value = true;
    Map data = {
      'mobile' : emailController.value.text,
      'password' : passwordController.value.text
    };
    _repository.loginApi(data).then((value) {
      loading.value = false;
      Utils.snackBar("Success", "Login Success");
    }).onError((error, stackTrace){
      loading.value = false;
      Utils.snackBar("Error", error.toString());
    });
  }

}