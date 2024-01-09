import 'package:ecommerce/core/classes/curd.dart';
import 'package:ecommerce/linkapi.dart';

class VerifySignup {
  Crud crud;
  VerifySignup(this.crud);
  postdata(String email, String verifycode) async {
    var response = await crud.postdata(Applink.verifycodesignup, {
      "verifycode": verifycode,
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }

  resendcode(String email) async {
    var response = await crud.postdata(Applink.resend, {
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
