import 'package:news_app_clean_architecture/features/post/domain/entities/post.dart';
import 'package:news_app_clean_architecture/features/post/domain/repositories/post_repository.dart';

class EditPostUseCase {
  final PostRepository postRepository;

  EditPostUseCase(this.postRepository);

  Future<void> call(int id, Post post) async {
    return await postRepository.editPost(id, post);
  }
}
