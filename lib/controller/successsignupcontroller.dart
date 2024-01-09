import 'package:ecommerce/core/constant/routename.dart';
import 'package:get/get.dart';

abstract class SuccessSignupController extends GetxController {
  gotologin();
}

class SuccessSignupControllerImp extends SuccessSignupController {
  late String verifycode;

  @override
  gotologin() {
    Get.offAllNamed(Approute.login);
  }
}
