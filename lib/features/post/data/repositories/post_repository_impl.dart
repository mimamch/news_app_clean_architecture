import 'package:news_app_clean_architecture/features/post/data/datasources/post_api.dart';
import 'package:news_app_clean_architecture/features/post/data/mappers/post_mapper.dart';
import 'package:news_app_clean_architecture/features/post/domain/entities/post.dart';
import 'package:news_app_clean_architecture/features/post/domain/repositories/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final PostApi postApi;

  PostRepositoryImpl(this.postApi);

  @override
  Future<List<Post>> getAllPosts() async {
    final postModels = await postApi.getAllPosts();
    return postModels.map(PostMapper.fromModel).toList();
  }

  @override
  Future<Post> getPostById(int id) async {
    final postModel = await postApi.getPostById(id);
    return PostMapper.fromModel(postModel);
  }

  @override
  Future<void> createPost(Post post) async {
    final postModel = PostMapper.toModel(post);
    await postApi.createPost(postModel);
  }

  @override
  Future<void> editPost(int id, Post post) async {
    final postModel = PostMapper.toModel(post);
    await postApi.editPost(id, postModel);
  }

  @override
  Future<void> deletePost(int id) async {
    await postApi.deletePost(id);
  }
}
