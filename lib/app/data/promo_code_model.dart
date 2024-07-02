///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class PromoCodeModelData {
/*
{
  "_id": "662f8b75eb23ff7d59c3c561",
  "promoCode": "PROMO_1",
  "promoTitle": "Get 10% discount",
  "discountAmount": 10,
  "usageLimit": 1,
  "expireDate": "2024-05-30T02:04:14.886Z",
  "status": true,
  "createdAt": "2024-04-29T11:58:45.511Z",
  "updatedAt": "2024-06-26T08:10:37.042Z",
  "minAmount": 40,
  "discountCodeType": "%"
} 
*/

  String? Id;
  String? promoCode;
  String? promoTitle;
  int? discountAmount;
  int? usageLimit;
  String? expireDate;
  bool? status;
  String? createdAt;
  String? updatedAt;
  int? minAmount;
  String? discountCodeType;

  PromoCodeModelData({
    this.Id,
    this.promoCode,
    this.promoTitle,
    this.discountAmount,
    this.usageLimit,
    this.expireDate,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.minAmount,
    this.discountCodeType,
  });
  PromoCodeModelData.fromJson(Map<String, dynamic> json) {
    Id = json['_id']?.toString();
    promoCode = json['promoCode']?.toString();
    promoTitle = json['promoTitle']?.toString();
    discountAmount = json['discountAmount']?.toInt();
    usageLimit = json['usageLimit']?.toInt();
    expireDate = json['expireDate']?.toString();
    status = json['status'];
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
    minAmount = json['minAmount']?.toInt();
    discountCodeType = json['discountCodeType']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = Id;
    data['promoCode'] = promoCode;
    data['promoTitle'] = promoTitle;
    data['discountAmount'] = discountAmount;
    data['usageLimit'] = usageLimit;
    data['expireDate'] = expireDate;
    data['status'] = status;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['minAmount'] = minAmount;
    data['discountCodeType'] = discountCodeType;
    return data;
  }
}

class PromoCodeModel {
/*
{
  "status": true,
  "message": "success",
  "data": [
    {
      "_id": "662f8b75eb23ff7d59c3c561",
      "promoCode": "PROMO_1",
      "promoTitle": "Get 10% discount",
      "discountAmount": 10,
      "usageLimit": 1,
      "expireDate": "2024-05-30T02:04:14.886Z",
      "status": true,
      "createdAt": "2024-04-29T11:58:45.511Z",
      "updatedAt": "2024-06-26T08:10:37.042Z",
      "minAmount": 40,
      "discountCodeType": "%"
    }
  ]
} 
*/

  bool? status;
  String? message;
  List<PromoCodeModelData?>? data;

  PromoCodeModel({
    this.status,
    this.message,
    this.data,
  });
  PromoCodeModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message']?.toString();
    if (json['data'] != null) {
      final v = json['data'];
      final arr0 = <PromoCodeModelData>[];
      v.forEach((v) {
        arr0.add(PromoCodeModelData.fromJson(v));
      });
      this.data = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      final v = this.data;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['data'] = arr0;
    }
    return data;
  }
}