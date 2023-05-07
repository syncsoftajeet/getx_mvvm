import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/assets/image_assets.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';
import 'package:getx_mvvm/res/components/round_button.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/viewmodel/services/splash_services.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  SplashServices services = SplashServices();

  @override
  void initState() {
    super.initState();
    services.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(onPressed: (){
       Utils.toastMessage("Hello I am Toast");
       Utils.snackBar("Hello", "I am SnackBar");
      },),
     body: Center(
       child: Text("Welcome Back\nto Flutter",style: TextStyle(
         fontSize: 15,
         color: AppColors.whitColor
       ),),
     ),
     /* body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'email_hint'.tr
            ),
          ),
          Image(image: AssetImage(ImageAssets.icons)),
          SizedBox(
            height: 50,
          ),
          RoundButton(title: "Login", onpress: (){},width: 200,)
        ],
      ),*/
    );
  }
}
