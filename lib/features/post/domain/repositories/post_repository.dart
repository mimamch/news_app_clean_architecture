import 'package:news_app_clean_architecture/features/post/domain/entities/post.dart';

abstract class PostRepository {
  Future<List<Post>> getAllPosts();
  Future<Post> getPostById(int id);
  Future<void> createPost(Post post);
  Future<void> editPost(int id, Post post);
  Future<void> deletePost(int id);
}
