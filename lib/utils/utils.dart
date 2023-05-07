import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';

class Utils{

  static void fieldFocousChange(BuildContext buildContext,FocusNode current,FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(buildContext).requestFocus(nextFocus);
  }


  static toastMessage(String message){
    Fluttertoast.showToast(msg: message,
    backgroundColor: AppColors.blackColor,
      gravity: ToastGravity.BOTTOM
    );
  }



  static snackBar(String title,String message){
    Get.snackbar(title, message

    );
  }

}