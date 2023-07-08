// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'news_entity.freezed.dart';
part 'news_entity.g.dart';

@freezed
class NewsEntity with _$NewsEntity {
  const factory NewsEntity({
    String? title,
    String? description,
    String? url,
    @JsonKey(name: 'urlToImage') String? imageUrl,
    String? publishedAt,
    String? content,
  }) = _NewsEntity;

  factory NewsEntity.fromJson(Map<String, Object?> json) =>
      _$NewsEntityFromJson(json);
}
