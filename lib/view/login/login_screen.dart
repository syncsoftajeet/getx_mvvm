import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/components/round_button.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/viewmodel/controller/loginview_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final loginViewModel = Get.put(LoginViewModel());
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Welcome"
        ),
      ),
    body: Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Form(
              key: _formkey,
                child: Column(
              children: [
                TextFormField(
                  controller: loginViewModel.emailController.value,
                  focusNode: loginViewModel.emailFocusMode.value,
                  validator: (value){
                    if(value!.isEmpty){
                      Utils.snackBar("Error", "Please Enter Email");
                    }
                  },
                  onFieldSubmitted: (value){
                    Utils.fieldFocousChange(context, loginViewModel.emailFocusMode.value, loginViewModel.passwordFocusMode.value);
                  },
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: loginViewModel.passwordController.value,
                  focusNode: loginViewModel.passwordFocusMode.value,
                  validator: (value){
                    if(value!.isEmpty){
                      Utils.snackBar("Error", "Please Enter Password");
                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            )),
            SizedBox(
              height: 20,
            ),
            Obx(() => RoundButton(title: "LogIn", width: 200,loading: loginViewModel.loading.value,onpress: () {

              if(_formkey.currentState!.validate()){
                loginViewModel.loginApi();
              }
            })
            )
          ],
        ),
      ),
    ),
    );
  }
}
