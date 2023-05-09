import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/data/response/status.dart';
import 'package:getx_mvvm/res/routes/routes.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/viewmodel/home/home_viewmodel.dart';
import 'package:getx_mvvm/viewmodel/userprefrences/user_prefrences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  UserPrefrences userPrefrences = UserPrefrences();


  final homeviewmodel = Get.put(HomeViewModel());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeviewmodel.getStrores();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        actions: [
          IconButton(onPressed: (){
            userPrefrences.removeUser().then((value) => {
              Get.toNamed(RoutesName.login_screen)
            });
          }, icon: Icon(Icons.power_settings_new))
        ],
      ),
      body: Obx((){
      switch(homeviewmodel.rxRequestStatus.value) {
        case Status.LOADING:
          return Center(child: CircularProgressIndicator());

        case Status.COMPLETE:
          return  Center(child: Text("comp"));

        case Status.ERROR:
          return Center(child: Text("error"));
      }
      return SizedBox();
      }),



    );
  }
}

