import 'package:get/get.dart';

validate(String val, min, int max, String type) {
  if (val.isEmpty) {
    return "44".tr;
  }
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "45".tr;
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "45".tr;
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "45".tr;
    }
  }

  if (val.length < min) {
    return "46$min".tr;
  }
  if (val.length > max) {
    return "47$max".tr;
  }
}
