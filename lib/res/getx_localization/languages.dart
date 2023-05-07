import 'package:get/get.dart';

class Languages extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {

    'en_US': {
      "email_hint" : 'Email',
      "internet" : 'Internet connection is not Avalaible'
    },

    'ur_PK': {
      "email_hint" : 'ईमेल',
      "internet" : 'Internet connection is not Avalaible'
    }
};

}