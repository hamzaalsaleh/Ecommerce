class CategoriesModel {
  int? categoriesId;
  String? categoriesName;
  String? categoriesNameAr;
  String? categoriesDate;
  String? categoriesImage;

  CategoriesModel(
      {this.categoriesId,
      this.categoriesName,
      this.categoriesNameAr,
      this.categoriesDate,
      this.categoriesImage});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    categoriesId = json["categories_id"];
    categoriesName = json["categories_name"];
    categoriesNameAr = json["categories_name_ar"];
    categoriesDate = json["categories_date"];
    categoriesImage = json["categories_image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["categories_id"] = categoriesId;
    _data["categories_name"] = categoriesName;
    _data["categories_name_ar"] = categoriesNameAr;
    _data["categories_date"] = categoriesDate;
    _data["categories_image"] = categoriesImage;
    return _data;
  }
}
