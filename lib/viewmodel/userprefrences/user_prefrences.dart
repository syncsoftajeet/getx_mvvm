import 'package:get/get.dart';
import 'package:getx_mvvm/models/login/loginrespons_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPrefrences {
  Future<bool> saveUser(LoginResponseModel loginResponseModel) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("mobile", loginResponseModel.data!.mobile.toString());
    return true;
  }

  Future<bool> getUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? mobile = sp.getString("mobile");
    if (mobile.toString()!="") {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> removeUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    return true;
  }
}
