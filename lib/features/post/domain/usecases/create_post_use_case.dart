import 'package:news_app_clean_architecture/core/error/failure.dart';
import 'package:news_app_clean_architecture/features/post/domain/entities/post.dart';
import 'package:news_app_clean_architecture/features/post/domain/repositories/post_repository.dart';

class CreatePostUseCase {
  final PostRepository postRepository;

  CreatePostUseCase(this.postRepository);

  Future<void> call(Post post) async {
    if (post.title.length < 10) {
      throw const ValidationFailure(
          'Post title must have atleast 10 character.');
    }
    return await postRepository.createPost(post);
  }
}
