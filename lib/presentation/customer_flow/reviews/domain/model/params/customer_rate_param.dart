class CustomerRateParam {
  final String? notes;
  final int? merchantId;
  final double? rate;
  final int? type;
  final int? interactionId;

  CustomerRateParam({this.notes, this.merchantId, this.rate, this.type, this.interactionId});

  CustomerRateParam.fromJson(Map<String, dynamic> json)
    : notes = json['notes'] as String?,
      merchantId = json['merchant_id'] as int?,
      interactionId = json['interaction_id'] as int?,
      rate = json['rate'] as double?,
      type = json['type'] as int?;

  Map<String, dynamic> toJson() => {'notes': notes, 'merchant_id': merchantId, 'interaction_id': interactionId, 'rate': rate, 'type': type};
}
