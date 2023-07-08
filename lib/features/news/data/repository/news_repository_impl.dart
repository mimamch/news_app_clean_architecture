import 'package:news_app_clean_architecture/features/news/data/api/news_api.dart';
import 'package:news_app_clean_architecture/features/news/domain/entity/news_entity.dart';
import 'package:news_app_clean_architecture/features/news/domain/repository/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsApi newsApi;
  final String apiKey;
  NewsRepositoryImpl({
    required this.newsApi,
    required this.apiKey,
  });

  @override
  Future<List<NewsEntity>> getRecentNews() {
    return newsApi.getRecentNews();
  }
}
