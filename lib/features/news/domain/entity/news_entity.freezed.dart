// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsEntity _$NewsEntityFromJson(Map<String, dynamic> json) {
  return _NewsEntity.fromJson(json);
}

/// @nodoc
mixin _$NewsEntity {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'urlToImage')
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get publishedAt => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsEntityCopyWith<NewsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEntityCopyWith<$Res> {
  factory $NewsEntityCopyWith(
          NewsEntity value, $Res Function(NewsEntity) then) =
      _$NewsEntityCopyWithImpl<$Res, NewsEntity>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? url,
      @JsonKey(name: 'urlToImage') String? imageUrl,
      String? publishedAt,
      String? content});
}

/// @nodoc
class _$NewsEntityCopyWithImpl<$Res, $Val extends NewsEntity>
    implements $NewsEntityCopyWith<$Res> {
  _$NewsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? publishedAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsEntityCopyWith<$Res>
    implements $NewsEntityCopyWith<$Res> {
  factory _$$_NewsEntityCopyWith(
          _$_NewsEntity value, $Res Function(_$_NewsEntity) then) =
      __$$_NewsEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? url,
      @JsonKey(name: 'urlToImage') String? imageUrl,
      String? publishedAt,
      String? content});
}

/// @nodoc
class __$$_NewsEntityCopyWithImpl<$Res>
    extends _$NewsEntityCopyWithImpl<$Res, _$_NewsEntity>
    implements _$$_NewsEntityCopyWith<$Res> {
  __$$_NewsEntityCopyWithImpl(
      _$_NewsEntity _value, $Res Function(_$_NewsEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? publishedAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_NewsEntity(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsEntity with DiagnosticableTreeMixin implements _NewsEntity {
  const _$_NewsEntity(
      {this.title,
      this.description,
      this.url,
      @JsonKey(name: 'urlToImage') this.imageUrl,
      this.publishedAt,
      this.content});

  factory _$_NewsEntity.fromJson(Map<String, dynamic> json) =>
      _$$_NewsEntityFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? url;
  @override
  @JsonKey(name: 'urlToImage')
  final String? imageUrl;
  @override
  final String? publishedAt;
  @override
  final String? content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsEntity(title: $title, description: $description, url: $url, imageUrl: $imageUrl, publishedAt: $publishedAt, content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsEntity'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('publishedAt', publishedAt))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsEntity &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, description, url, imageUrl, publishedAt, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsEntityCopyWith<_$_NewsEntity> get copyWith =>
      __$$_NewsEntityCopyWithImpl<_$_NewsEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsEntityToJson(
      this,
    );
  }
}

abstract class _NewsEntity implements NewsEntity {
  const factory _NewsEntity(
      {final String? title,
      final String? description,
      final String? url,
      @JsonKey(name: 'urlToImage') final String? imageUrl,
      final String? publishedAt,
      final String? content}) = _$_NewsEntity;

  factory _NewsEntity.fromJson(Map<String, dynamic> json) =
      _$_NewsEntity.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get url;
  @override
  @JsonKey(name: 'urlToImage')
  String? get imageUrl;
  @override
  String? get publishedAt;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$_NewsEntityCopyWith<_$_NewsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
