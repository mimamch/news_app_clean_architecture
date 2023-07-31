import 'package:news_app_clean_architecture/features/post/domain/repositories/post_repository.dart';

class DeletePostByIdUseCase {
  final PostRepository postRepository;

  DeletePostByIdUseCase(this.postRepository);

  Future<void> call(int id) async {
    return await postRepository.deletePost(id);
  }
}
