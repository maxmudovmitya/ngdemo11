import 'package:shared_preferences/shared_preferences.dart';

class PrefsService {

  /*
  *  String Related
  * */

  static void storeName(String name) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("name", name);
  }

  static Future<String> loadName() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? name = prefs.getString("name");
    return name!;
  }

  static Future<bool> removeName() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("name");
  }


/**/

}