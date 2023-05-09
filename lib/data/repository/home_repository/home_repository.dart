import 'package:getx_mvvm/data/network/network_api_services.dart';
import 'package:getx_mvvm/models/home/store_response.dart';
import 'package:getx_mvvm/res/app_urls/app_url.dart';

class HomeRepsitory{

  final _apiService = NetworkApiServices();

  Future<StoreResponse> getStrore() async{
    dynamic response = await _apiService.getApi(AppUrl.storeUrl);
    print(response);
    return StoreResponse.fromJson(response);
  }

}