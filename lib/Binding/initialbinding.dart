import 'package:ecommerce/core/classes/curd.dart';
import 'package:get/get.dart';

class Initialbinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
