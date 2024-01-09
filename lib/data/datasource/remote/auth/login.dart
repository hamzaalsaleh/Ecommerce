import 'package:ecommerce/core/classes/curd.dart';
import 'package:ecommerce/linkapi.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);
  postdata(String email, String password) async {
    var response = await crud.postdata(Applink.logindata, {
      "email": email,
      "password": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
