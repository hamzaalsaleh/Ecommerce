import 'package:ecommerce/core/classes/curd.dart';
import 'package:ecommerce/linkapi.dart';

class CheckEmailForget {
  Crud crud;
  CheckEmailForget(this.crud);
  postdata(String email) async {
    var response = await crud.postdata(Applink.checkEmail, {
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
