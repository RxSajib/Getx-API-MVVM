import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys {
    return {
      'en_US': {'home': 'Home'},
      'bn' : {
        'home' : 'home_bangla'
      }
    };
  }
}
