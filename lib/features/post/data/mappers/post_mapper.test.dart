// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_test/flutter_test.dart';
import 'package:news_app_clean_architecture/features/post/data/mappers/post_mapper.dart';

import 'package:news_app_clean_architecture/features/post/data/models/post_model.dart';
import 'package:news_app_clean_architecture/features/post/domain/entities/post.dart';

void main() {
  group('PostMapper', () {
    final postModel = PostModel(id: 1, title: 'Title', body: 'Body');
    final post = Post(id: 1, title: 'Title', body: 'Body');

    test('should convert PostModel to Post', () {
      final result = PostMapper.fromModel(postModel);
      expect(result, post);
    });

    test('should convert Post to PostModel', () {
      final result = PostMapper.toModel(post);
      expect(result, postModel);
    });
  });
}
