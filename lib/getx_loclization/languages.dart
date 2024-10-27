import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys {
    return {
      'en_US': {
        'home': 'Home',
        'internet_error' : 'There was a no internet connection\nplease try again'
      },
      'bn': {'home': 'home_bangla',
        'internet_error' : 'There was a no internet connection\nplease try again'  }
    };
  }
}
