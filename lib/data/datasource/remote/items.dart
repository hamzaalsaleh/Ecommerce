import 'package:ecommerce/linkapi.dart';

import '../../../core/classes/curd.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  getdata(String id, int usersid) async {
    var response = await crud.postdata(
        Applink.items, {"id": id.toString(), "usersid": usersid.toString()});
    return response.fold((l) => l, (r) => r);
  }
}
