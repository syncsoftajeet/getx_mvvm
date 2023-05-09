import 'package:get/get.dart';
import 'package:getx_mvvm/models/login/loginrespons_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPrefrences {
  Future<bool> saveUser(String ss) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("mobile", ss);
    return true;
  }

  Future<bool> getUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? mobile = sp.getString("mobile");
    print(mobile);
    if (mobile.toString().isNotEmpty && mobile.toString()!='null') {
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
