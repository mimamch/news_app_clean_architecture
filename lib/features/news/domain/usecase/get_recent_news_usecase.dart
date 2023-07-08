import 'package:news_app_clean_architecture/features/news/domain/entity/news_entity.dart';
import 'package:news_app_clean_architecture/features/news/domain/repository/news_repository.dart';

class GetRecentNewsUseCase {
  final NewsRepository newsRepositoryImpl;
  GetRecentNewsUseCase(this.newsRepositoryImpl);
  Future<List<NewsEntity>> call() async {
    return newsRepositoryImpl.getRecentNews();
  }
}
