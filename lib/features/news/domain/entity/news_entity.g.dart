// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsEntity _$$_NewsEntityFromJson(Map<String, dynamic> json) =>
    _$_NewsEntity(
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      imageUrl: json['urlToImage'] as String?,
      publishedAt: json['publishedAt'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_NewsEntityToJson(_$_NewsEntity instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.imageUrl,
      'publishedAt': instance.publishedAt,
      'content': instance.content,
    };
