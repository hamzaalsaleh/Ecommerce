import 'package:ecommerce/linkapi.dart';

import '../../../core/classes/curd.dart';

class CartData {
  Crud crud;
  CartData(this.crud);
  add(int itemsid, int usersid) async {
    var response = await crud.postdata(Applink.addcart,
        {"itemsid": itemsid.toString(), "usersid": usersid.toString()});
    return response.fold((l) => l, (r) => r);
  }

  delete(int itemsid, int usersid) async {
    var response = await crud.postdata(Applink.deletecart,
        {"itemsid": itemsid.toString(), "usersid": usersid.toString()});
    return response.fold((l) => l, (r) => r);
  }

  getcount(int itemsid, int usersid) async {
    var response = await crud.postdata(Applink.getitemscount,
        {"itemsid": itemsid.toString(), "usersid": usersid.toString()});
    return response.fold((l) => l, (r) => r);
  }

  view(int usersid) async {
    var response =
        await crud.postdata(Applink.cartview, {"usersid": usersid.toString()});
    return response.fold((l) => l, (r) => r);
  }
}
