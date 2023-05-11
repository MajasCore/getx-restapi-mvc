import 'package:get/get.dart';
import 'package:marvel/model/characters_model.dart';
import 'package:marvel/model/result_model.dart';
import 'package:marvel/service/remote_service.dart';

class CharacterController extends GetxController {
  var data = Characters().obs;

  String get copyright => data.value.copyright ?? "";

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() async {
    var item = await RemoteService.fetchData();
    if (item != null) {
      data.value = item;
    } else {
      print("not fetched");
    }
  }
}
