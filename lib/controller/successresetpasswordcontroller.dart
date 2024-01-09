import 'package:ecommerce/core/classes/statuserequest.dart';
import 'package:ecommerce/core/constant/routename.dart';
import 'package:get/get.dart';

abstract class SuccessResetController extends GetxController {
  gotologin();
}

class SuccessResetControllerImp extends SuccessResetController {
  late String verifycode;
  StatuseRequest statuseRequest = StatuseRequest.none;
  @override
  gotologin() {
    Get.offAllNamed(Approute.login);
  }
}
