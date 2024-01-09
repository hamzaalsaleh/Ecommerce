import 'package:ecommerce/linkapi.dart';

import '../../../core/classes/curd.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);
  getdata() async {
    var response = await crud.postdata(Applink.homepage, {});
    return response.fold((l) => l, (r) => r);
  }

  searchData(String search) async {
    var response = await crud.postdata(Applink.search, {"search": search});
    return response.fold((l) => l, (r) => r);
  }
}
