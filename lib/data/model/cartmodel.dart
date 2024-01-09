class CartModel {
  int? itemsprice;
  int? countitems;
  int? cartId;
  int? cartUserid;
  int? cartItemsid;
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

  CartModel({
    this.itemsprice,
    this.countitems,
    this.cartId,
    this.cartUserid,
    this.cartItemsid,
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
  });

  CartModel.fromJson(Map<String, dynamic> json) {
    itemsprice = json["itemsprice"];
    countitems = json["countitems"];
    cartId = json["cart_id"];
    cartUserid = json["cart_userid"];
    cartItemsid = json["cart_itemsid"];
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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["itemsprice"] = itemsprice;
    _data["countitems"] = countitems;
    _data["cart_id"] = cartId;
    _data["cart_userid"] = cartUserid;
    _data["cart_itemsid"] = cartItemsid;
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
    return _data;
  }
}
