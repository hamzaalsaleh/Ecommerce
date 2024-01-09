import 'package:ecommerce/core/classes/curd.dart';
import 'package:ecommerce/linkapi.dart';

class VerifyCodeForget {
  Crud crud;
  VerifyCodeForget(this.crud);
  postdata(String email, String verifycode) async {
    var response = await crud.postdata(Applink.verifycodeforgetpassword,
        {"email": email, "verifycode": verifycode});
    return response.fold((l) => l, (r) => r);
  }

  resenddata(String email) async {
    var response = await crud.postdata(Applink.resend, {"email": email});
    return response.fold((l) => l, (r) => r);
  }
}
