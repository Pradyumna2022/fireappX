import 'package:http/http.dart' as http;
import 'package:login_otp_ver/assignment/model/profile_model.dart';

var firstUrl = 'https://ajanitech.com/test/chat-app-x/user-1.json';
var secondUrl = 'https://ajanitech.com/test/chat-app-x/user-2.json';

class ApiServices {
  static Future fetchDataApi(var url) async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      print(response.body +
          '---------------------------------------------RESPONSE OF MY BODY');
      return profileModelFromJson(response.body);
    } else {
      return null;
    }
  }
}
