class ProviderProfileParam {
  final String? name;
  final int? categoryId;
  final int? cityId;
  final String? profilePic;
  final String? coverImage;
  final List<String>? merchantImages;
  final double? inspectionFee;
  final String? description;

  ProviderProfileParam({this.name, this.categoryId, this.cityId, this.profilePic, this.coverImage, this.merchantImages, this.inspectionFee, this.description});

  ProviderProfileParam.fromJson(Map<String, dynamic> json)
    : name = json['name'] as String?,
      categoryId = json['category_id'] as int?,
      cityId = json['city_id'] as int?,
      profilePic = json['profile_pic'] as String?,
      coverImage = json['cover_image'] as String?,
      merchantImages = (json['merchant-images'] as List?)?.map((dynamic e) => e as String).toList(),
      inspectionFee = json['inspection_fee'] as double?,
      description = json['description'] as String?;

  Map<String, dynamic> toJson() => {
    'name': name,
    'category_id': categoryId,
    'city_id': cityId,
    'profile_pic': profilePic,
    'cover_image': coverImage,
    'merchant-images': merchantImages,
    'inspection_fee': inspectionFee,
    'description': description,
  };
}
