import 'package:get/get.dart';
import 'package:login_otp_ver/assignment/res/api_services.dart';
import 'package:login_otp_ver/assignment/model/profile_model.dart';

class ProfileController extends GetxController {
  var loading = true.obs;
  var profileDataList = ProfileModel().obs;
  var isFirstUrl = true.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchData();
  }

  Future refreshData() {
    isFirstUrl.value = !isFirstUrl.value;
    return fetchData();
  }

  fetchData() async {
    try {
      loading(true);
      var url = isFirstUrl.value ? firstUrl : secondUrl;
      var profileData = await ApiServices.fetchDataApi(url);
      if (profileData != null) {
        profileDataList.value = profileData;
      }
    } finally {
      loading(false);
    }
  }
}
