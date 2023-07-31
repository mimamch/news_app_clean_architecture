import 'package:news_app_clean_architecture/features/post/data/models/post_model.dart';
import 'package:news_app_clean_architecture/features/post/domain/entities/post.dart';

class PostMapper {
  static Post fromModel(PostModel model) {
    return Post(
      id: model.id,
      title: model.title,
      body: model.body,
    );
  }

  static PostModel toModel(Post post) {
    return PostModel(
      id: post.id,
      title: post.title,
      body: post.body,
    );
  }
}
