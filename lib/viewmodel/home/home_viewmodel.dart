
import 'package:get/get.dart';
import 'package:getx_mvvm/data/repository/home_repository/home_repository.dart';
import 'package:getx_mvvm/models/home/store_response.dart';

import '../../data/response/status.dart';

class HomeViewModel extends GetxController{

  final respository = HomeRepsitory();


  final rxRequestStatus = Status.LOADING.obs;

  final storelist = StoreResponse().obs;


  void setRxStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(StoreResponse _value) => storelist.value = _value;

  void getStrores(){
    respository.getStrore().then((value) {
      setRxStatus(Status.COMPLETE);
      setUserList(value);
    }).onError((error, stackTrace)  {
      print(error.toString());
      setRxStatus(Status.ERROR);
    });
  }
}