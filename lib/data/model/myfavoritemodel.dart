class MyFavoriteModel {
  int? favoriteId;
  int? favoriteUsersid;
  int? favoriteItemsid;
  int? itemsId;
  String? itemsName;
  String? itemsNameAr;
  String? itemsDesc;
  String? itemsDescAr;
  String? itemsImage;
  int? itemsActive;
  String? itemsDate;
  int? itemsCat;
  int? itemsPrice;
  int? itemsDiscount;
  int? itemsCount;
  int? usersId;

  MyFavoriteModel(
      {this.favoriteId,
      this.favoriteUsersid,
      this.favoriteItemsid,
      this.itemsId,
      this.itemsName,
      this.itemsNameAr,
      this.itemsDesc,
      this.itemsDescAr,
      this.itemsImage,
      this.itemsActive,
      this.itemsDate,
      this.itemsCat,
      this.itemsPrice,
      this.itemsDiscount,
      this.itemsCount,
      this.usersId});

  MyFavoriteModel.fromJson(Map<String, dynamic> json) {
    favoriteId = json["favorite_id"];
    favoriteUsersid = json["favorite_usersid"];
    favoriteItemsid = json["favorite_itemsid"];
    itemsId = json["items_id"];
    itemsName = json["items_name"];
    itemsNameAr = json["items_name_ar"];
    itemsDesc = json["items_desc"];
    itemsDescAr = json["items_desc_ar"];
    itemsImage = json["items_image"];
    itemsActive = json["items_active"];
    itemsDate = json["items_date"];
    itemsCat = json["items_cat"];
    itemsPrice = json["items_price"];
    itemsDiscount = json["items_discount"];
    itemsCount = json["items_count"];
    usersId = json["users_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["favorite_id"] = favoriteId;
    _data["favorite_usersid"] = favoriteUsersid;
    _data["favorite_itemsid"] = favoriteItemsid;
    _data["items_id"] = itemsId;
    _data["items_name"] = itemsName;
    _data["items_name_ar"] = itemsNameAr;
    _data["items_desc"] = itemsDesc;
    _data["items_desc_ar"] = itemsDescAr;
    _data["items_image"] = itemsImage;
    _data["items_active"] = itemsActive;
    _data["items_date"] = itemsDate;
    _data["items_cat"] = itemsCat;
    _data["items_price"] = itemsPrice;
    _data["items_discount"] = itemsDiscount;
    _data["items_count"] = itemsCount;
    _data["users_id"] = usersId;
    return _data;
  }
}
