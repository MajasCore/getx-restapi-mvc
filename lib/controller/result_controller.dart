import 'package:get/get.dart';
import 'package:marvel/controller/characters_controller.dart';
import 'package:marvel/model/characters_model.dart';

import '../model/result_model.dart';

class ResultController extends CharacterController {
  @override
  Rx<Characters> get data => super.data;

  List<Result>? get l => data.value.data?.results;

  Result? one(int index) => l?.elementAt(index);

  String extension(int index) {
    var path = l?.elementAt(index).thumbnail?.path;
    var ext = l?.elementAt(index).thumbnail?.extension;

    if (ext == Extension.JPG) {
      return "$path.jpg";
    } else if (ext == Extension.GIF) {
      return "$path.gif";
    } else {
      return "";
    }
  }
}
