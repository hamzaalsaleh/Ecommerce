import 'package:ecommerce/linkapi.dart';

import '../../../core/classes/curd.dart';

class TestData {
  Crud crud;
  TestData(this.crud);
  getdata() async {
    var response = await crud.postdata(Applink.testlink, {});
    return response.fold((l) => l, (r) => r);
  }
}
