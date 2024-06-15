///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class AddAmountModelDataTotalDetails {
/*
{
  "amount_discount": 0,
  "amount_shipping": 0,
  "amount_tax": 0
}
*/

  int? amountDiscount;
  int? amountShipping;
  int? amountTax;

  AddAmountModelDataTotalDetails({
    this.amountDiscount,
    this.amountShipping,
    this.amountTax,
  });
  AddAmountModelDataTotalDetails.fromJson(Map<String, dynamic> json) {
    amountDiscount = json['amount_discount']?.toInt();
    amountShipping = json['amount_shipping']?.toInt();
    amountTax = json['amount_tax']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['amount_discount'] = amountDiscount;
    data['amount_shipping'] = amountShipping;
    data['amount_tax'] = amountTax;
    return data;
  }
}

class AddAmountModelDataSavedPaymentMethodOptions {
/*
{
  "allow_redisplay_filters": [
    "always"
  ]
}
*/

  List<String?>? allowRedisplayFilters;

  AddAmountModelDataSavedPaymentMethodOptions({
    this.allowRedisplayFilters,
  });
  AddAmountModelDataSavedPaymentMethodOptions.fromJson(Map<String, dynamic> json) {
    if (json['allow_redisplay_filters'] != null) {
      final v = json['allow_redisplay_filters'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      allowRedisplayFilters = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (allowRedisplayFilters != null) {
      final v = allowRedisplayFilters;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['allow_redisplay_filters'] = arr0;
    }
    return data;
  }
}

class AddAmountModelDataPhoneNumberCollection {
/*
{
  "enabled": false
}
*/

  bool? enabled;

  AddAmountModelDataPhoneNumberCollection({
    this.enabled,
  });
  AddAmountModelDataPhoneNumberCollection.fromJson(Map<String, dynamic> json) {
    enabled = json['enabled'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['enabled'] = enabled;
    return data;
  }
}

class AddAmountModelDataAutomaticTax {
/*
{
  "enabled": false
}
*/

  bool? enabled;

  AddAmountModelDataAutomaticTax({
    this.enabled,
  });
  AddAmountModelDataAutomaticTax.fromJson(Map<String, dynamic> json) {
    enabled = json['enabled'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['enabled'] = enabled;
    return data;
  }
}

class AddAmountModelData {
/*
{
  "id": "cs_test_a1u09spyFHyHxl5Z1eWmCGBDbDS2248zSd52l8tS9I8c87IPcvlYzo4iRm",
  "object": "checkout.session",
  "amount_subtotal": 1000,
  "amount_total": 1000,
  "automatic_tax": {
    "enabled": false
  },
  "cancel_url": "http://api.greenpool.ca/v1/payment/paymentCancelled",
  "phone_number_collection": {
    "enabled": false
  },
  "saved_payment_method_options": {
    "allow_redisplay_filters": [
      "always"
    ]
  },
  "status": "open",
  "success_url": "http://api.greenpool.ca/v1/payment/paymentSuccess",
  "total_details": {
    "amount_discount": 0,
    "amount_shipping": 0,
    "amount_tax": 0
  },
  "ui_mode": "hosted",
  "url": "https://checkout.stripe.com/c/pay/cs_test_a1u09spyFHyHxl5Z1eWmCGBDbDS2248zSd52l8tS9I8c87IPcvlYzo4iRm#fidkdWxOYHwnPyd1blpxYHZxWjA0SmpBS1dJQVNwVWBPcnI0NXVUd3FQVEBBRmw3ZFNja0tfYGpmd3xJVVEwamc1N25sPUdLS3VsdlJkT0NqY3xpbm9KaTVsS2RgN3NvbFdpZEp%2Fazw9VE5dNTVGTGY3cnZxRycpJ2N3amhWYHdzYHcnP3F3cGApJ2lkfGpwcVF8dWAnPyd2bGtiaWBabHFgaCcpJ2BrZGdpYFVpZGZgbWppYWB3dic%2FcXdwYHgl"
}
*/

  String? id;
  String? object;
  int? amountSubtotal;
  int? amountTotal;
  AddAmountModelDataAutomaticTax? automaticTax;
  String? cancelUrl;
  AddAmountModelDataPhoneNumberCollection? phoneNumberCollection;
  AddAmountModelDataSavedPaymentMethodOptions? savedPaymentMethodOptions;
  String? status;
  String? successUrl;
  AddAmountModelDataTotalDetails? totalDetails;
  String? uiMode;
  String? url;

  AddAmountModelData({
    this.id,
    this.object,
    this.amountSubtotal,
    this.amountTotal,
    this.automaticTax,
    this.cancelUrl,
    this.phoneNumberCollection,
    this.savedPaymentMethodOptions,
    this.status,
    this.successUrl,
    this.totalDetails,
    this.uiMode,
    this.url,
  });
  AddAmountModelData.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    object = json['object']?.toString();
    amountSubtotal = json['amount_subtotal']?.toInt();
    amountTotal = json['amount_total']?.toInt();
    automaticTax = (json['automatic_tax'] != null) ? AddAmountModelDataAutomaticTax.fromJson(json['automatic_tax']) : null;
    cancelUrl = json['cancel_url']?.toString();
    phoneNumberCollection = (json['phone_number_collection'] != null) ? AddAmountModelDataPhoneNumberCollection.fromJson(json['phone_number_collection']) : null;
    savedPaymentMethodOptions = (json['saved_payment_method_options'] != null) ? AddAmountModelDataSavedPaymentMethodOptions.fromJson(json['saved_payment_method_options']) : null;
    status = json['status']?.toString();
    successUrl = json['success_url']?.toString();
    totalDetails = (json['total_details'] != null) ? AddAmountModelDataTotalDetails.fromJson(json['total_details']) : null;
    uiMode = json['ui_mode']?.toString();
    url = json['url']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['object'] = object;
    data['amount_subtotal'] = amountSubtotal;
    data['amount_total'] = amountTotal;
    if (automaticTax != null) {
      data['automatic_tax'] = automaticTax!.toJson();
    }
    data['cancel_url'] = cancelUrl;
    if (phoneNumberCollection != null) {
      data['phone_number_collection'] = phoneNumberCollection!.toJson();
    }
    if (savedPaymentMethodOptions != null) {
      data['saved_payment_method_options'] = savedPaymentMethodOptions!.toJson();
    }
    data['status'] = status;
    data['success_url'] = successUrl;
    if (totalDetails != null) {
      data['total_details'] = totalDetails!.toJson();
    }
    data['ui_mode'] = uiMode;
    data['url'] = url;
    return data;
  }
}

class AddAmountModel {
/*
{
  "status": true,
  "data": {
    "id": "cs_test_a1u09spyFHyHxl5Z1eWmCGBDbDS2248zSd52l8tS9I8c87IPcvlYzo4iRm",
    "object": "checkout.session",
    "amount_subtotal": 1000,
    "amount_total": 1000,
    "automatic_tax": {
      "enabled": false
    },
    "cancel_url": "http://api.greenpool.ca/v1/payment/paymentCancelled",
    "phone_number_collection": {
      "enabled": false
    },
    "saved_payment_method_options": {
      "allow_redisplay_filters": [
        "always"
      ]
    },
    "status": "open",
    "success_url": "http://api.greenpool.ca/v1/payment/paymentSuccess",
    "total_details": {
      "amount_discount": 0,
      "amount_shipping": 0,
      "amount_tax": 0
    },
    "ui_mode": "hosted",
    "url": "https://checkout.stripe.com/c/pay/cs_test_a1u09spyFHyHxl5Z1eWmCGBDbDS2248zSd52l8tS9I8c87IPcvlYzo4iRm#fidkdWxOYHwnPyd1blpxYHZxWjA0SmpBS1dJQVNwVWBPcnI0NXVUd3FQVEBBRmw3ZFNja0tfYGpmd3xJVVEwamc1N25sPUdLS3VsdlJkT0NqY3xpbm9KaTVsS2RgN3NvbFdpZEp%2Fazw9VE5dNTVGTGY3cnZxRycpJ2N3amhWYHdzYHcnP3F3cGApJ2lkfGpwcVF8dWAnPyd2bGtiaWBabHFgaCcpJ2BrZGdpYFVpZGZgbWppYWB3dic%2FcXdwYHgl"
  }
}
*/

  bool? status;
  AddAmountModelData? data;

  AddAmountModel({
    this.status,
    this.data,
  });
  AddAmountModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = (json['data'] != null) ? AddAmountModelData.fromJson(json['data']) : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    if (data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}