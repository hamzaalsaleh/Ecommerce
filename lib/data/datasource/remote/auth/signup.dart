import 'package:ecommerce/core/classes/curd.dart';
import 'package:ecommerce/linkapi.dart';

class SignupData {
  Crud crud;
  SignupData(this.crud);
  postdata(String username, String email, String phone, String password) async {
    var response = await crud.postdata(Applink.signupdata, {
      "username": username,
      "email": email,
      "phone": phone,
      "password": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
