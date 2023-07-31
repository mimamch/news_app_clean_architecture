import 'package:dio/dio.dart';
import 'package:news_app_clean_architecture/core/network/api_exceptions.dart';
import 'package:news_app_clean_architecture/features/post/data/models/post_model.dart';

class PostApi {
  final Dio _dio;

  PostApi(this._dio);

  Future<List<PostModel>> getAllPosts() async {
    try {
      final response = await _dio.get('/posts');
      return (response.data as List)
          .map((json) => PostModel.fromJson(json))
          .toList();
    } on DioException catch (error) {
      throw ApiExceptions.handleDioError(error);
    }
  }

  Future<PostModel> getPostById(int id) async {
    try {
      final response = await _dio.get('/posts/$id');
      return PostModel.fromJson(response.data);
    } on DioException catch (error) {
      throw ApiExceptions.handleDioError(error);
    }
  }

  Future<void> createPost(PostModel post) async {
    try {
      await _dio.post('/posts', data: post.toJson());
    } on DioException catch (error) {
      throw ApiExceptions.handleDioError(error);
    }
  }

  Future<void> editPost(int id, PostModel post) async {
    try {
      await _dio.put('/posts/$id', data: post.toJson());
    } on DioException catch (error) {
      throw ApiExceptions.handleDioError(error);
    }
  }

  Future<void> deletePost(int id) async {
    try {
      await _dio.delete('/posts/$id');
    } on DioException catch (error) {
      throw ApiExceptions.handleDioError(error);
    }
  }
}
