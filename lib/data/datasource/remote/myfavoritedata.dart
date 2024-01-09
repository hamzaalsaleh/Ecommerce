import 'package:ecommerce/linkapi.dart';

import '../../../core/classes/curd.dart';

class MyFavoriteData {
  Crud crud;
  MyFavoriteData(this.crud);
  getdata(int id) async {
    var response = await crud.postdata(Applink.viewfavorite, {
      "id": id.toString(),
    });
    return response.fold((l) => l, (r) => r);
  }

  deletedata(int id) async {
    var response = await crud.postdata(Applink.deletefromfav, {
      "id": id.toString(),
    });
    return response.fold((l) => l, (r) => r);
  }
}
