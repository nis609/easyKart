import 'package:ecoomerce_app/module/home_screen/models/banner_modal/banner_modal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_modal.freezed.dart';
part 'product_modal.g.dart';

@freezed
class ProductModal with _$ProductModal {
  factory ProductModal({
    @JsonKey(name: 'bestseller') int? bestseller,
    @JsonKey(name: 'vendorId') int? vendorId,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'brand') String? brand,
    @JsonKey(name: 'images') List<String>? images,
    @JsonKey(name: 'category') List<String>? category,
    @JsonKey(name: 'summary') String? summary,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'featured') bool? featured,

  }) = _ProductModal;

  factory ProductModal.fromJson(Map<String, dynamic> json) => _$ProductModalFromJson(json);
}