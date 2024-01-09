class ItemsModel {
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
  int? itemspricediscount;
  int? itemsCount;
  int? categoriesId;
  String? categoriesName;
  String? categoriesNameAr;
  String? categoriesDate;
  String? categoriesImage;
  int? favorite;
  ItemsModel(
      {this.itemsId,
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
      this.itemspricediscount,
      this.itemsCount,
      this.categoriesId,
      this.categoriesName,
      this.categoriesNameAr,
      this.categoriesDate,
      this.categoriesImage,
      this.favorite});

  ItemsModel.fromJson(Map<String, dynamic> json) {
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
    categoriesId = json["categories_id"];
    categoriesName = json["categories_name"];
    categoriesNameAr = json["categories_name_ar"];
    categoriesDate = json["categories_date"];
    categoriesImage = json["categories_image"];
    favorite = json["favorite"];
    itemspricediscount = json["itemspricediscount"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
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
    _data["categories_id"] = categoriesId;
    _data["categories_name"] = categoriesName;
    _data["categories_name_ar"] = categoriesNameAr;
    _data["categories_date"] = categoriesDate;
    _data["categories_image"] = categoriesImage;
    return _data;
  }
}
