import 'package:ecommerce/linkapi.dart';

import '../../../core/classes/curd.dart';

class FavoriteData {
  Crud crud;
  FavoriteData(this.crud);
  addfavorite(int itemsid, int usersid) async {
    var response = await crud.postdata(Applink.addfavorite,
        {"itemsid": itemsid.toString(), "usersid": usersid.toString()});
    return response.fold((l) => l, (r) => r);
  }

  removefavorite(int itemsid, int usersid) async {
    var response = await crud.postdata(Applink.removefavorite,
        {"itemsid": itemsid.toString(), "usersid": usersid.toString()});
    return response.fold((l) => l, (r) => r);
  }
}
