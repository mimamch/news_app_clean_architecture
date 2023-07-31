import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:news_app_clean_architecture/core/error/failure.dart';
import 'package:news_app_clean_architecture/features/post/data/datasources/mock_post_api.dart';
import 'package:news_app_clean_architecture/features/post/data/datasources/post_api.dart';
import 'package:news_app_clean_architecture/features/post/data/models/post_model.dart';

void main() {
  group("Post API Test", () {
    late PostApi postApi;
    late MockPostApiJson mock;
    setUp(() {
      mock = MockPostApiJson();
      postApi = PostApi(Dio(), mock);
    });

    test('Get All Post', () async {
      final posts = await postApi.getAllPosts();
      final actualPosts = List<Map<String, dynamic>>.from(mock.getposts().data)
          .map((e) => PostModel.fromJson(e))
          .toList();
      expect(posts, equals(actualPosts));
    });

    test('Get Post By ID', () async {
      final post = await postApi.getPostById(1);
      final actualPost =
          PostModel.fromJson(Map<String, dynamic>.from(mock.postById(1).data));
      expect(post, equals(actualPost));
    });

    test('Throw Not Found Post By ID', () async {
      const id = 10;
      final post = postApi.getPostById(id);
      expect(post, throwsA(isA<NetworkFailure>()));
      expect(
          post, throwsA(const NetworkFailure("Post with id: $id not found")));
    });

    test('Delete Post By ID', () async {
      const id = 10;
      final post = postApi.deletePost(id);
      expect(post, isA<void>());
    });

    test('Edit Post By ID', () async {
      const postModel = PostModel(id: 1, body: '', title: '');
      final post = postApi.editPost(postModel.id, postModel);
      expect(post, isA<void>());
    });
  });
}
