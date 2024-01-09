import 'package:ecommerce/core/classes/curd.dart';
import 'package:ecommerce/linkapi.dart';

class RestetPasswordForget {
  Crud crud;
  RestetPasswordForget(this.crud);
  postdata(String email, String password) async {
    var response = await crud.postdata(
        Applink.resetpasswordforget, {"email": email, "password": password});
    return response.fold((l) => l, (r) => r);
  }
}
