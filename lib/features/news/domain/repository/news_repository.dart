import 'package:news_app_clean_architecture/features/news/domain/entity/news_entity.dart';

abstract class NewsRepository {
  Future<List<NewsEntity>> getRecentNews();
}
