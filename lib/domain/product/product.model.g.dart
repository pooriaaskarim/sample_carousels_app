// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(final Map<String, dynamic> json) =>
    _$ProductImpl(
      type: json['type'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      price: json['price'] as String,
      city: json['city'] as String,
      presenter: json['presenter'] as String,
      runtime: json['runtime'] as String,
      rate: json['rate'] as String,
      url: json['url'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$ProductImplToJson(final _$ProductImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'image': instance.image,
      'price': instance.price,
      'city': instance.city,
      'presenter': instance.presenter,
      'runtime': instance.runtime,
      'rate': instance.rate,
      'url': instance.url,
      'id': instance.id,
    };