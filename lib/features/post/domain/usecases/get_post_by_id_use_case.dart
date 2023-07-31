import 'package:news_app_clean_architecture/features/post/domain/entities/post.dart';
import 'package:news_app_clean_architecture/features/post/domain/repositories/post_repository.dart';

class GetPostByIdUseCase {
  final PostRepository postRepository;

  GetPostByIdUseCase(this.postRepository);

  Future<Post> call(int id) async {
    return await postRepository.getPostById(id);
  }
}
