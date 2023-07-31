import 'package:news_app_clean_architecture/features/post/domain/entities/post.dart';
import 'package:news_app_clean_architecture/features/post/domain/repositories/post_repository.dart';

class GetAllPostsUseCase {
  final PostRepository postRepository;

  GetAllPostsUseCase(this.postRepository);

  Future<List<Post>> call() async {
    return await postRepository.getAllPosts();
  }
}
